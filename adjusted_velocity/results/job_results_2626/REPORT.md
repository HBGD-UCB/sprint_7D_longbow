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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

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
##         y_rate_haz
## perdiar6 -0.655648866666667 -0.637769516129032 -0.595109347826087
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.555435391304348 -0.542210739130435 -0.480263684210526
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.474238870967742 -0.469475152173913 -0.414469318681319
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.401241574468085 -0.394414351648352 -0.359767419354839
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.327824433333333 -0.290341227272727 -0.264057065934066
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.255220586206897 -0.247344593406593 -0.225672290322581
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.216296533333333 -0.206157633333333 -0.199398366666667
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.173342483870968 -0.150448193548387 -0.145471173913043
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.138564966666667 -0.135552684782609 -0.131344840909091
##       Q1                  2                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.130357285714286 -0.129432765957447 -0.125634195652174
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.109103380434783 -0.102491054347826 -0.100310393617021
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.0935898461538462 -0.0802198681318682 -0.0694294239130435
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0675926666666666 -0.0668498901098901 -0.0647163829787234
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0642130333333333 -0.0635073956043957 -0.058244744680851
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0580993146067416 -0.0540741333333333 -0.0528986086956522
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0454502413793104 -0.0439352333333333 -0.0410112808988764
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.033424945054945 -0.0233974615384615 -0.0101389
##       Q1                  1                   1          3
##       Q2                  0                   0          0
##       Q3                  0                   0          0
##       Q4                  0                   0          0
##         y_rate_haz
## perdiar6 -0.0100274835164835 -0.00661232608695653 -0.00330616304347826
##       Q1                   1                    1                    1
##       Q2                   0                    0                    0
##       Q3                   0                    0                    0
##       Q4                   0                    0                    0
##         y_rate_haz
## perdiar6 0.00330616304347826 0.00337963333333334 0.0231431413043478
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 0.0388298297872341 0.0392473548387097 0.03954171
##       Q1                  1                  1          1
##       Q2                  0                  0          0
##       Q3                  0                  0          0
##       Q4                  0                  0          0
##         y_rate_haz
## perdiar6 0.0401099340659341 0.0425179677419354 0.0439352333333333
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0534799120879121 0.0608334 0.0647163829787234
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 0.0675926666666666 0.0701923846153846 0.0751873483146067
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0768773736263736 0.0878704666666667 0.09188378125
##       Q1                  1                  1             1
##       Q2                  0                  0             0
##       Q3                  0                  0             0
##       Q4                  0                  0             0
##         y_rate_haz
## perdiar6 0.0980093666666666 0.105797217391304 0.114907533333333
##       Q1                  1                 1                 1
##       Q2                  0                 0                 0
##       Q3                  0                 0                 0
##       Q4                  0                 0                 0
##         y_rate_haz
## perdiar6 0.116198629213483 0.125634195652174 0.1318057 0.143727263736264
##       Q1                 1                 1         1                 1
##       Q2                 0                 0         0                 0
##       Q3                 0                 0         0                 0
##       Q4                 0                 0         0                 0
##         y_rate_haz
## perdiar6 0.150448193548387 0.158842766666667 0.16158871875
##       Q1                 1                 1             1
##       Q2                 0                 0             0
##       Q3                 0                 0             0
##       Q4                 0                 0             0
##         y_rate_haz
## perdiar6 0.191757456521739 0.1926391 0.193864681318681 0.195535928571429
##       Q1                 1         1                 1                 1
##       Q2                 0         0                 0                 0
##       Q3                 0         0                 0                 0
##       Q4                 0         0                 0                 0
##         y_rate_haz
## perdiar6 0.196018733333333 0.203892164835165 0.207092425531915
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.209537266666667 0.210577153846154 0.214900597826087
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.216799882978723 0.224819086956522 0.225866584158416
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.231431413043478 0.245407465909091 0.24796222826087 0.2534725
##       Q1                 1                 1                1         1
##       Q2                 0                 0                0         0
##       Q3                 0                 0                0         0
##       Q4                 0                 0                0         0
##         y_rate_haz
## perdiar6 0.254029582417582 0.264493043478261 0.265337170212766
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.26999093258427 0.271808808510638 0.276197620689655
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.280243752808989 0.280769538461538 0.281516265957447
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.281754694736842 0.289109227722772 0.297407733333333
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.297625774193548 0.304167 0.313978838709677 0.314085489130435
##       Q1                 1        2                 1                 1
##       Q2                 0        0                 0                 0
##       Q3                 0        0                 0                 0
##       Q4                 0        0                 0                 0
##         y_rate_haz
## perdiar6 0.323790677419355 0.327310141304348 0.330331903225806
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.337591945054945 0.34341435483871 0.347147119565217
##       Q1                 1                1                 2
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_haz
## perdiar6 0.349955580645161 0.350961923076923 0.376120483870968
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.387729362637363 0.396739565217391 0.398563655172414
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.419074533333333 0.421909064516129 0.425213051020408
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.429801195652174 0.434524285714286 0.443025847826087 0.4562505
##       Q1                 1                 1                 1         1
##       Q2                 0                 0                 0         0
##       Q3                 0                 0                 0         0
##       Q4                 0                 0                 0         0
##         y_rate_haz
## perdiar6 0.4663894 0.477976714285714 0.481319208791209 0.487321322580645
##       Q1         1                 1                 1                 1
##       Q2         0                 0                 0                 0
##       Q3         0                 0                 0                 0
##       Q4         0                 0                 0                 0
##         y_rate_haz
## perdiar6 0.502536782608696 0.511401659340659 0.521429142857143
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.528114131868132 0.531456626373626 0.555435391304348
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.561539076923077 0.5779173 0.582169096774193 0.594815466666667
##       Q1                 1         1                 1                 1
##       Q2                 0         0                 0                 0
##       Q3                 0         0                 0                 0
##       Q4                 0         0                 0                 0
##         y_rate_haz
## perdiar6 0.598306516483517 0.618041457446808 0.6184729 0.621558652173913
##       Q1                 1                 1         1                 1
##       Q2                 0                 0         0                 0
##       Q3                 0                 0         0                 0
##       Q4                 0                 0         0                 0
##         y_rate_haz
## perdiar6 0.621703978021978 0.622004426966292 0.624864815217391
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.669850921348315 0.671841395604395 0.705408574468085
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.74203378021978 0.745376274725275 0.783068234042553
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.796011510638298 0.804570774193548 0.813316108695652
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.817653225806452 0.828592862068966 0.929213472527473
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.950094674157303 0.969954766666667 0.983689021276596
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 1.10479048275862 1.32481626666667
##       Q1                1                1
##       Q2                0                0
##       Q3                0                0
##       Q4                0                0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##         y_rate_haz
## perdiar6 -1.05106596666667 -1.02740853333333 -0.946297333333333
##       Q1                 1                 1                  1
##       Q2                 0                 0                  0
##       Q3                 0                 0                  0
##       Q4                 0                 0                  0
##         y_rate_haz
## perdiar6 -0.828938637362637 -0.823234597826087 -0.820225617977528
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.812264147727273 -0.786049550561798 -0.782143714285714
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.770335989130435 -0.762088747252747 -0.74897035483871
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.746591727272727 -0.709723 -0.706452387096774
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 -0.673268528089888 -0.661813912087912 -0.651786428571429
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.631731461538461 -0.601498786516854 -0.56908664516129
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.56390511235955 -0.558196582417582 -0.550880233333333
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.548169098901099 -0.539981865168539 -0.531456626373626
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.508097147727273 -0.492135370786517 -0.481319208791209
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.481008279069767 -0.480445602272727 -0.479293454545455
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.463009766666667 -0.447894263736264 -0.446543042553191
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.43786678021978 -0.433599765957447 -0.408935633333333
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.408826612903226 -0.40778432967033 -0.404477393617021
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.394034522727273 -0.386821076086956 -0.372849870967742
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.367674395604396 -0.358241133333333 -0.350961923076923
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.34093443956044 -0.337228630434783 -0.334249450549451
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.331204066666667 -0.324905659090909 -0.3244448
##       Q1                  1                  1          1
##       Q2                  0                  0          0
##       Q3                  0                  0          0
##       Q4                  0                  0          0
##         y_rate_haz
## perdiar6 -0.320346095744681 -0.314085489130435 -0.310708225806452
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.310570515789474 -0.307473163043478 -0.28433002173913
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.279693793103448 -0.278002096774194 -0.277427043956044
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.267799206521739 -0.266991033333333 -0.266573325842697
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.257880717391304 -0.254574554347826 -0.2534725
##       Q1                  1                  1          1
##       Q2                  0                  0          0
##       Q3                  0                  0          0
##       Q4                  0                  0          0
##         y_rate_haz
## perdiar6 -0.252320352272727 -0.247344593406593 -0.244002098901099
##       Q1                  1                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.240659604395604 -0.2230558 -0.219131064516129
##       Q1                  1          1                  1
##       Q2                  0          0                  0
##       Q3                  0          0                  0
##       Q4                  0          0                  0
##         y_rate_haz
## perdiar6 -0.216366216494845 -0.208474011235955 -0.20828827173913
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.207234659340659 -0.207092425531915 -0.19806223255814
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.19414914893617 -0.193235505882353 -0.192105473684211
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.19138597752809 -0.185145130434783 -0.177152208791209
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.174297943820225 -0.155463133333333 -0.153754747252747
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.1520835 -0.150374696629213 -0.140121876404494
##       Q1          1                  1                  1
##       Q2          0                  0                  0
##       Q3          0                  0                  0
##       Q4          0                  0                  0
##         y_rate_haz
## perdiar6 -0.139140223404255 -0.135185333333333 -0.13369978021978
##       Q1                  1                  2                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.1318057 -0.130357285714286 -0.128940358695652
##       Q1          1                  1                  2
##       Q2          0                  0                  0
##       Q3          0                  0                  0
##       Q4          0                  0                  0
##         y_rate_haz
## perdiar6 -0.125046433333333 -0.124283290322581 -0.120329802197802
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.119021869565217 -0.117742064516129 -0.116987307692308
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.112409543478261 -0.104659612903226 -0.101389
##       Q1                  1                  1         1
##       Q2                  0                  0         0
##       Q3                  0                  0         0
##       Q4                  0                  0         0
##         y_rate_haz
## perdiar6 -0.0902473516483517 -0.0888577752808989 -0.0820225617977528
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0817653225806452 -0.0811112 -0.0777315666666667 -0.07604175
##       Q1                   1          1                   1           1
##       Q2                   0          0                   0           0
##       Q3                   0          0                   0           0
##       Q4                   0          0                   0           0
##         y_rate_haz
## perdiar6 -0.0717697415730337 -0.0679522021276596 -0.0654122580645161
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0635073956043956 -0.0501374175824176 -0.0420656489361702
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0300824505494506 -0.0273408539325843 -0.0264493043478261
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0233974615384615 -0.0228942903225807 -0.0228942903225806
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0196236774193549 -0.0170880337078652 -0.00647163829787235
##       Q1                   1                   1                    1
##       Q2                   0                   0                    0
##       Q3                   0                   0                    0
##       Q4                   0                   0                    0
##         y_rate_haz
## perdiar6 -0.00341760674157304 -0.00337963333333334 0 0.00337963333333332
##       Q1                    1                    1 3                   1
##       Q2                    0                    0 0                   0
##       Q3                    0                    0 0                   0
##       Q4                    0                    0 0                   0
##         y_rate_haz
## perdiar6 0.00337963333333341 0.0101389 0.0138257727272727
##       Q1                   1         2                  1
##       Q2                   0         0                  0
##       Q3                   0         0                  0
##       Q4                   0         0                  0
##         y_rate_haz
## perdiar6 0.0177759935064935 0.0198369782608696 0.0217262142857143
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0239232471910113 0.0270370666666667 0.0294355161290323
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0320175789473684 0.033424945054945 0.0405556 0.0444288876404494
##       Q1                  1                 1         1                  1
##       Q2                  0                 0         0                  0
##       Q3                  0                 0         0                  0
##       Q4                  0                 0         0                  0
##         y_rate_haz
## perdiar6 0.0462862826086957 0.04752609375 0.0540741333333333
##       Q1                  1             1                  1
##       Q2                  0             0                  0
##       Q3                  0             0                  0
##       Q4                  0             0                  0
##         y_rate_haz
## perdiar6 0.0576316421052632 0.0580993146067416 0.0582447446808511
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0701923846153846 0.0751873483146067 0.0768773736263736
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0820225617977528 0.0835623626373626 0.0969323406593407
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.104659612903226 0.104768633333333 0.105945808988764
##       Q1                 1                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.106959824175824 0.111200838709678 0.116198629213483
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.11723103125 0.119823363636364 0.120975511363636
##       Q1             1                 1                 1
##       Q2             0                 0                 0
##       Q3             0                 0                 0
##       Q4             0                 0                 0
##         y_rate_haz
## perdiar6 0.123672296703297 0.127014791208791 0.130357285714286
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.148777336956522 0.1520835 0.155389663043478 0.163782230769231
##       Q1                 1         1                 1                 2
##       Q2                 0         0                 0                 0
##       Q3                 0         0                 0                 0
##       Q4                 0         0                 0                 0
##         y_rate_haz
## perdiar6 0.178304793103448 0.183837197802198 0.188451293478261 0.202778
##       Q1                 1                 1                 1        1
##       Q2                 0                 0                 0        0
##       Q3                 0                 0                 0        0
##       Q4                 0                 0                 0        0
##         y_rate_haz
## perdiar6 0.20828827173913 0.211594434782609 0.214900597826087
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.219676166666667 0.220604637362637 0.223947131868132
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.227289626373626 0.231581693181818 0.250092866666667
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.258865531914894 0.266991033333333 0.268190258064516
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.270370666666667 0.2737503 0.281023858695652 0.2940281
##       Q1                 1         1                 1         1
##       Q2                 0         0                 0         0
##       Q3                 0         0                 0         0
##       Q4                 0         0                 0         0
##         y_rate_haz
## perdiar6 0.294459542553191 0.300787366666667 0.300965242105263
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.317685533333333 0.327564461538462 0.331204066666667
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.337591945054945 0.3447226 0.351481866666667 0.3650004
##       Q1                 1         1                 1         1
##       Q2                 0         0                 0         0
##       Q3                 0         0                 0         0
##       Q4                 0         0                 0         0
##         y_rate_haz
## perdiar6 0.365683921348315 0.37211920212766 0.373596423913044
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_haz
## perdiar6 0.379354348314607 0.402176366666667 0.408935633333333
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.491844510638298 0.510441172413793 0.5880562 0.595109347826087
##       Q1                 1                 1         1                 1
##       Q2                 0                 0         0                 0
##       Q3                 0                 0         0                 0
##       Q4                 0                 0         0                 0
##         y_rate_haz
## perdiar6 0.635371066666667 0.64758135483871 0.6488896 0.685211373626374
##       Q1                 1                1         1                 1
##       Q2                 0                0         0                 0
##       Q3                 0                0         0                 0
##       Q4                 0                0         0                 0
##         y_rate_haz
## perdiar6 0.756880674418605
##       Q1                 1
##       Q2                 0
##       Q3                 0
##       Q4                 0
##         y_rate_haz
## perdiar6 -0.884849454545455 -0.7806953 -0.768773736263736
##       Q1                  1          1                  1
##       Q2                  0          0                  0
##       Q3                  0          0                  0
##       Q4                  0          0                  0
##         y_rate_haz
## perdiar6 -0.763954325581395 -0.741620662921348 -0.702730655172414
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.665787766666667 -0.6387507 -0.600329605263158
##       Q1                  1          1                  1
##       Q2                  0          0                  0
##       Q3                  0          0                  0
##       Q4                  0          0                  0
##         y_rate_haz
## perdiar6 -0.597964670454545 -0.584410752808989 -0.557028722891566
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.485300157303371 -0.4765283 -0.469393518518519
##       Q1                  1          1                  1
##       Q2                  0          0                  0
##       Q3                  0          0                  0
##       Q4                  0          0                  0
##         y_rate_haz
## perdiar6 -0.458039717647059 -0.445387392857143 -0.439352333333333
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.438968284090909 -0.434524285714286 -0.432237315789474
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.429412235294118 -0.408935633333333 -0.391571310344828
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.388213144736842 -0.381898566666667 -0.381082793103448
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.378590840425532 -0.3650004 -0.362926534090909
##       Q1                  1          1                  1
##       Q2                  0          0                  0
##       Q3                  0          0                  0
##       Q4                  0          0                  0
##         y_rate_haz
## perdiar6 -0.355431101123595 -0.341342966666667 -0.333135285714286
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.330616304347826 -0.32951425 -0.328090247191011
##       Q1                  1           1                  1
##       Q2                  0           0                  0
##       Q3                  0           0                  0
##       Q4                  0           0                  0
##         y_rate_haz
## perdiar6 -0.324905659090909 -0.321065166666667 -0.317837426966292
##       Q1                  1                  1                  2
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.310779326086957 -0.304167 -0.300860836956522
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 -0.297174655172414 -0.294139516483516 -0.287454527472527
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.285620231707317 -0.282440785714286 -0.280243752808989
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.279409220930233 -0.276515454545455 -0.275198714285714
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.2737503 -0.2636114 -0.260714571428571 -0.257093535714286
##       Q1          1          2                  1                  1
##       Q2          0          0                  0                  0
##       Q3          0          0                  0                  0
##       Q4          0          0                  0                  0
##         y_rate_haz
## perdiar6 -0.252320352272727 -0.2433336 -0.236574333333333
##       Q1                  1          1                  1
##       Q2                  0          0                  0
##       Q3                  0          0                  0
##       Q4                  0          0                  0
##         y_rate_haz
## perdiar6 -0.235814865168539 -0.228979651685393 -0.224668806818182
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.223544421686747 -0.219879759036145 -0.218851865853659
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.218284552941176 -0.215309224719101 -0.210288296296296
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.203892164835165 -0.201638797752809 -0.200305097560976
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.19789178313253 -0.195063619565217 -0.1939064625
##       Q1                 1                  1             1
##       Q2                 0                  0             0
##       Q3                 0                  0             0
##       Q4                 0                  0             0
##         y_rate_haz
## perdiar6 -0.193235505882353 -0.184672821428571 -0.175343329411765
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.17046721978022 -0.161790957446808 -0.150374696629213
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.135185333333333 -0.132585615384615 -0.131344840909091
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.122366034482759 -0.119356670886076 -0.1115279 -0.1102605375
##       Q1                  1                  1          2             1
##       Q2                  0                  0          0             0
##       Q3                  0                  0          0             0
##       Q4                  0                  0          0             0
##         y_rate_haz
## perdiar6 -0.107930225806452 -0.10645845 -0.103861902439024
##       Q1                  1           1                  1
##       Q2                  0           0                  0
##       Q3                  0           0                  0
##       Q4                  0           0                  0
##         y_rate_haz
## perdiar6 -0.0946297333333333 -0.0901235555555556 -0.0896902692307692
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.089024487804878 -0.0869048571428571 -0.0859602391304349
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0859602391304348 -0.0835623626373626 -0.0832838214285714
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0802198681318681 -0.07604175 -0.0668498901098901
##       Q1                   1           1                   1
##       Q2                   0           0                   0
##       Q3                   0           0                   0
##       Q4                   0           0                   0
##         y_rate_haz
## perdiar6 -0.0667683658536585 -0.0644118352941176 -0.0587595340909091
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0506945 -0.0470734642857143 -0.0467949230769231
##       Q1          1                   2                   1
##       Q2          0                   0                   0
##       Q3          0                   0                   0
##       Q4          0                   0                   0
##         y_rate_haz
## perdiar6 -0.0434524285714285 -0.0393627882352941 -0.0345644318181818
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0318314302325581 -0.0289682857142857 -0.0279693793103448
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0264493043478261 -0.0239232471910112 -0.0205056404494382
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0187757407407407 -0.0165308152173913 -0.0144841428571429
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0132246521739131 -0.0130824516129032 -0.0100274835164836
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.00675926666666667 -0.00661232608695652 -0.00654122580645162
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.00330616304347826 0.00334249450549458 0.00675926666666667
##       Q1                    1                   1                   1
##       Q2                    0                   0                   0
##       Q3                    0                   0                   0
##       Q4                    0                   0                   0
##         y_rate_haz
## perdiar6 0.0202778 0.0207386590909091 0.0222561219512195
##       Q1         1                  1                  1
##       Q2         0                  0                  0
##       Q3         0                  0                  0
##       Q4         0                  0                  0
##         y_rate_haz
## perdiar6 0.0262860370370371 0.0266146125 0.0286274823529412 0.0304167
##       Q1                  1            1                  1         1
##       Q2                  0            0                  0         0
##       Q3                  0            0                  0         0
##       Q4                  0            0                  0         0
##         y_rate_haz
## perdiar6 0.0311079886363637 0.0341760674157303 0.034961724137931
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 0.0413066296296296 0.0439352333333333 0.04752609375
##       Q1                  1                  1             1
##       Q2                  0                  0             0
##       Q3                  0                  0             0
##       Q4                  0                  0             0
##         y_rate_haz
## perdiar6 0.0478464943820225 0.0506945 0.0528986086956521
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 0.0601649010989011 0.0654122580645161 0.0656724204545455
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0668498901098901 0.070736511627907 0.0709723 0.0727355869565217
##       Q1                  1                 1         1                  1
##       Q2                  0                 0         0                  0
##       Q3                  0                 0         0                  0
##       Q4                  0                 0         0                  0
##         y_rate_haz
## perdiar6 0.0878704666666666 0.0898675227272727 0.0909004827586207
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0990311162790698 0.1026563625 0.106959824175824
##       Q1                  1            2                 1
##       Q2                  0            0                 0
##       Q3                  0            0                 0
##       Q4                  0            0                 0
##         y_rate_haz
## perdiar6 0.119356670886076 0.123033842696629 0.128070315789474
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.136350724137931 0.141220392857143 0.1520835 0.160823931034483
##       Q1                 1                 1         1                 1
##       Q2                 0                 0         0                 0
##       Q3                 0                 0         0                 0
##       Q4                 0                 0         0                 0
##         y_rate_haz
## perdiar6 0.162001989130435 0.162452829545455 0.1634897625
##       Q1                 1                 1            1
##       Q2                 0                 0            0
##       Q3                 0                 0            0
##       Q4                 0                 0            0
##         y_rate_haz
## perdiar6 0.167462730337079 0.172822159090909 0.174896025 0.180494703296703
##       Q1                 1                 1           1                 1
##       Q2                 0                 0           0                 0
##       Q3                 0                 0           0                 0
##       Q4                 0                 0           0                 0
##         y_rate_haz
## perdiar6 0.1825002 0.185145130434783 0.185297137931034 0.187968370786517
##       Q1         1                 1                 1                 1
##       Q2         0                 0                 0                 0
##       Q3         0                 0                 0                 0
##       Q4         0                 0                 0                 0
##         y_rate_haz
## perdiar6 0.189259466666667 0.190104375 0.192289482758621 0.196018733333333
##       Q1                 1           1                 1                 1
##       Q2                 0           0                 0                 0
##       Q3                 0           0                 0                 0
##       Q4                 0           0                 0                 0
##         y_rate_haz
## perdiar6 0.196595743902439 0.20054967032967 0.203892164835165
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_haz
## perdiar6 0.209537266666667 0.210577153846154 0.214706117647059
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.218376307692308 0.226270573170732 0.22812525 0.238043739130435
##       Q1                 1                 2          2                 1
##       Q2                 0                 0          0                 0
##       Q3                 0                 0          0                 0
##       Q4                 0                 0          0                 0
##         y_rate_haz
## perdiar6 0.250490470588235 0.257647341176471 0.261225776470588
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.2623440375 0.294139516483516 0.296748292682927
##       Q1            1                 1                 1
##       Q2            0                 0                 0
##       Q3            0                 0                 0
##       Q4            0                 0                 0
##         y_rate_haz
## perdiar6 0.300411851851852 0.300860836956522 0.304167 0.307584606741573
##       Q1                 1                 1        1                 1
##       Q2                 0                 0        0                 0
##       Q3                 0                 0        0                 0
##       Q4                 0                 0        0                 0
##         y_rate_haz
## perdiar6 0.307788035714286 0.318314302325581 0.327564461538462
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.332136379310345 0.340534793478261 0.360494222222222
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.365724607142857 0.367370532467532 0.373596423913043
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.386780259259259 0.418676929411765 0.422454166666667
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.423188869565217 0.466619829545455 0.544120966666667
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.545274987804878 0.640923321428571 0.65378424137931
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 0.686065566666667 0.722396625 0.754920506024096 0.922989517241379
##       Q1                 1           1                 1                 1
##       Q2                 0           0                 0                 0
##       Q3                 0           0                 0                 0
##       Q4                 0           0                 0                 0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##         y_rate_haz
## perdiar6 -1.64588143333333 -1.03351367741935 -1.02088234482759
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 -0.899418548387097 -0.80888367032967 -0.802198681318681
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.649345280898876 -0.633091779069767 -0.629208205882353
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.611535757894737 -0.570705092783505 -0.469726253164557
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.445044347368421 -0.443576875 -0.417484117647059
##       Q1                  1            1                  1
##       Q2                  0            0                  0
##       Q3                  0            0                  0
##       Q4                  0            0                  0
##         y_rate_haz
## perdiar6 -0.398563655172414 -0.381009189473684 -0.367674395604396
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.362103571428571 -0.361920227848101 -0.33762537
##       Q1                  1                  1           1
##       Q2                  0                  0           0
##       Q3                  0                  0           0
##       Q4                  0                  0           0
##         y_rate_haz
## perdiar6 -0.333987294117647 -0.323790677419355 -0.321715096153846
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.276233295918367 -0.271364676470588 -0.251837193548387
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.250859381443299 -0.235814865168539 -0.192886390243902
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.15512517 -0.1520835 -0.147069758241758 -0.135841572815534
##       Q1           1          1                  1                  1
##       Q2           0          0                  0                  0
##       Q3           0          0                  0                  0
##       Q4           0          0                  0                  0
##         y_rate_haz
## perdiar6 -0.120329802197802 -0.116987307692308 -0.10645845
##       Q1                  1                  1           1
##       Q2                  0                  0           0
##       Q3                  0                  0           0
##       Q4                  0                  0           0
##         y_rate_haz
## perdiar6 -0.103693295454546 -0.101389 -0.0817653225806452
##       Q1                  1         1                   1
##       Q2                  0         0                   0
##       Q3                  0         0                   0
##       Q4                  0         0                   0
##         y_rate_haz
## perdiar6 -0.0615576071428572 -0.0546817078651685 -0.0523298064516129
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0439352333333334 -0.0298202941176471 -0.026739956043956
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0176841279069767 -0.00327061290322581 0.0100274835164835
##       Q1                   1                    1                  1
##       Q2                   0                    0                  0
##       Q3                   0                    0                  0
##       Q4                   0                    0                  0
##         y_rate_haz
## perdiar6 0.0129432765957447 0.0168981666666667 0.0196236774193548
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0300824505494505 0.0457885806451613 0.0478464943820225
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0574537666666666 0.10034375257732 0.101389 0.141220392857143
##       Q1                  1                1        1                 1
##       Q2                  0                0        0                 0
##       Q3                  0                0        0                 0
##       Q4                  0                0        0                 0
##         y_rate_haz
## perdiar6 0.1419446 0.148627056818182 0.157716222222222 0.16120851
##       Q1         1                 1                 1          1
##       Q2         0                 0                 0          0
##       Q3         0                 0                 0          0
##       Q4         0                 0                 0          0
##         y_rate_haz
## perdiar6 0.206048612903226 0.22285502970297 0.235484129032258
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_haz
## perdiar6 0.242092102040816 0.246413772151899 0.269602568181818
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.2978301875 0.362266314606742 0.387729362637363
##       Q1            1                 1                 1
##       Q2            0                 0                 0
##       Q3            0                 0                 0
##       Q4            0                 0                 0
##         y_rate_haz
## perdiar6 0.459630133333333 0.462722138297872 0.4866672 0.505877747368421
##       Q1                 1                 1         1                 1
##       Q2                 0                 0         0                 0
##       Q3                 0                 0         0                 0
##       Q4                 0                 0         0                 0
##         y_rate_haz
## perdiar6 0.755713886597938 0.777315666666667 0.944518578947368
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.970132642105263 1.32132761290323
##       Q1                 1                1
##       Q2                 0                0
##       Q3                 0                0
##       Q4                 0                0
##         y_rate_haz
## perdiar6 -1.12461746052632 -0.580318618421052 -0.379038876923077
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.299487507692308 -0.201286985294118 -0.121046051020408
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.0847047341772152 -0.0534347432432432 -0.0160087894736842
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.0473148666666667 0.05386290625 0.0782143714285714
##       Q1                  1             1                  1
##       Q2                  0             0                  0
##       Q3                  0             0                  0
##       Q4                  0             0                  0
##         y_rate_haz
## perdiar6 0.161790957446808 0.24796222826087 0.248863909090909
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_haz
## perdiar6 0.278002096774193 0.290942347826087 0.369579258064516
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.398796733333333 0.440871269662921 0.745423352112676
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##         y_rate_haz
## perdiar6 -0.542041192307692 -0.525379363636364 -0.375270974025974
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.339263192307692 -0.23522248 -0.22711136 -0.225000246575342
##       Q1                  1           1           1                  1
##       Q2                  0           0           0                  0
##       Q3                  0           0           0                  0
##       Q4                  0           0           0                  0
##         y_rate_haz
## perdiar6 -0.188103276315789 -0.12572236 -0.120065921052632
##       Q1                  1           1                  1
##       Q2                  0           0                  0
##       Q3                  0           0                  0
##       Q4                  0           0                  0
##         y_rate_haz
## perdiar6 -0.0896902692307692 -0.0750541948051949 -0.0632035324675325
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0560307631578947 -0.0506945 -0.0434524285714286
##       Q1                   1          1                   1
##       Q2                   0          0                   0
##       Q3                   0          0                   0
##       Q4                   0          0                   0
##         y_rate_haz
## perdiar6 0.0120065921052632 0.02534725 0.158008831168831 0.178154957142857
##       Q1                  1          1                 1                 1
##       Q2                  0          0                 0                 0
##       Q3                  0          0                 0                 0
##       Q4                  0          0                 0                 0
##         y_rate_haz
## perdiar6 0.181051785714286 0.225162584415584 0.2775523875
##       Q1                 1                 1            1
##       Q2                 0                 0            0
##       Q3                 0                 0            0
##       Q4                 0                 0            0
##         y_rate_haz
## perdiar6 0.288366116883117 0.308277364864865 0.387121636363636 0.41772268
##       Q1                 1                 1                 1          1
##       Q2                 0                 0                 0          0
##       Q3                 0                 0                 0          0
##       Q4                 0                 0                 0          0
##         y_rate_haz
## perdiar6 0.45839252112676 0.460252697368421
##       Q1                1                 1
##       Q2                0                 0
##       Q3                0                 0
##       Q4                0                 0
##         y_rate_haz
## perdiar6 -0.157932865384615 -0.138950941504178 -0.135371027472527
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.127151778688525 -0.116987307692308 -0.115431797783934
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.113432444751381 -0.110833454794521 -0.104452953296703
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.101664513586957 -0.0994392115384615 -0.095000104109589
##       Q1                  1                   1                  1
##       Q2                  0                   0                  0
##       Q3                  0                   0                  0
##       Q4                  0                   0                  0
##         y_rate_haz
## perdiar6 -0.0935898461538461 -0.0933334356164384 -0.090000098630137
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0893121939058172 -0.0869048571428571 -0.0867867798913044
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0828792915531335 -0.0816667561643836 -0.0686028831521739
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0682320567567568 -0.0646458474114441 -0.0645202727272727
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0643430192307692 -0.062671771978022 -0.0618361483516483
##       Q1                   2                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0595109347826087 -0.0571867111716621 -0.0570313125
##       Q1                   1                   1             1
##       Q2                   0                   0             0
##       Q3                   0                   0             0
##       Q4                   0                   0             0
##         y_rate_haz
## perdiar6 -0.0558333945205479 -0.0551511593406593 -0.0541667260273973
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0537251494565217 -0.0520720679347826 -0.0501374175824176
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0464124032697548 -0.0457081557377049 -0.0455836103542234
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0422684386920981 -0.0421535788043478 -0.0417811813186813
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0416667123287671 -0.0396739565217391 -0.0382286393442623
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0376030631868132 -0.0367674395604396 -0.0353878504155125
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0343549504132231 -0.0342605686813187 -0.0317536978021978
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0304991300813008 -0.0300824505494505 -0.0284112032967033
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0281023858695652 -0.0273501662125341 -0.0272758451086957
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0272758451086956 -0.0259043324175824 -0.0256227635869565
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0250000273972603 -0.0249317213114754 -0.023269606557377
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0231431413043478 -0.0225618379120879 -0.0225000246575343
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0224385491803279 -0.0192193434065934 -0.0183837197802198
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0175000191780822 -0.0174522049180328 -0.0167124725274725
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0133333479452055 -0.0131888130081301 -0.0117959501385042
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.011763364640884 -0.0108631071428572 -0.0108333452054795
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.00991848913043477 -0.00842567867036011 -0.00835623626373626
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.00758311080332409 -0.006684989010989 -0.00584936538461537
##       Q1                    1                  1                    1
##       Q2                    0                  0                    0
##       Q3                    0                  0                    0
##       Q4                    0                  0                    0
##         y_rate_haz
## perdiar6 -0.00578578532608695 -0.00502755371900826 -0.00334249450549451
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.00330616304347826 -0.00250000273972603 -0.00165308152173913
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.000833334246575343 -0.000828792915531336 0
##       Q1                     1                     1 1
##       Q2                     0                     0 0
##       Q3                     0                     0 0
##       Q4                     0                     0 0
##         y_rate_haz
## perdiar6 0.000826540760869566 0.00165308152173913 0.00249317213114754
##       Q1                    1                   1                   1
##       Q2                    0                   0                   0
##       Q3                    0                   0                   0
##       Q4                    0                   0                   0
##         y_rate_haz
## perdiar6 0.00580155040871933 0.00906730894308944 0.00919185989010989
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.0100274835164835 0.0107743079019074 0.0108631071428571
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0123981114130435 0.0124658606557377 0.0125000136986301
##       Q1                  1                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0125343543956044 0.0131888130081301 0.0150000164383562
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0151662216066482 0.0166666849315068 0.017404651226158
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 0.0175000191780822 0.0183837197802198 0.019891029972752
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 0.0207198228882834 0.0242330851648352 0.0275755796703296
##       Q1                  1                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0284112032967033 0.0301653223140496 0.0325893214285714
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0331517166212534 0.0333333698630137 0.0339805095367847
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0340733524590164 0.0350961923076923 0.0376030631868132
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0405004972826087 0.0428636422764228 0.0444100578512397
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0451236758241758 0.0462862826086957 0.0484661703296703
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0488987820163488 0.0553030909090909 0.0593292774725275
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0641667369863014 0.0669498016304348 0.0737625694822888
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0752152092391304 0.07604175 0.0768773736263736
##       Q1                  1          1                  1
##       Q2                  0          0                  0
##       Q3                  0          0                  0
##       Q4                  0          0                  0
##         y_rate_haz
## perdiar6 0.0902473516483517 0.0953111852861035 0.0969323406593407
##       Q1                  2                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.100551074380165 0.105578628099174 0.108868516393443
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.11280918956044 0.114480436813187 0.122996491803279
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.123154573369565 0.126805316076294 0.127850414835165
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.128113817934783 0.134535403846154 0.158768489010989
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.172974090659341 0.206635190217391 0.20974153021978
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 0.243166475274725
##       Q1                 1
##       Q2                 0
##       Q3                 0
##       Q4                 0
##         y_rate_haz
## perdiar6 -0.225000246575342 -0.194467426229508 -0.153763980662983
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.138257727272727 -0.127982836065574 -0.123517551587302
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.121165425824176 -0.118658554945055 -0.116348032786885
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.113333457534247 -0.107159105691057 -0.106666783561644
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.104713229508197 -0.102770321525886 -0.101389
##       Q1                  1                  1         1
##       Q2                  0                  0         0
##       Q3                  0                  0         0
##       Q4                  0                  0         0
##         y_rate_haz
## perdiar6 -0.0989160975609756 -0.0966667726027397 -0.0927542225274725
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.092466768 -0.0913338925619835 -0.0897541967213115
##       Q1            1                   1                   1
##       Q2            0                   0                   0
##       Q3            0                   0                   0
##       Q4            0                   0                   0
##         y_rate_haz
## perdiar6 -0.0891667643835616 -0.0885761043956044 -0.0869048571428571
##       Q1                   2                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0855989098360656 -0.0849029837398374 -0.0841667589041096
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0822746803278688 -0.0821167107438016 -0.0791667534246575
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.078358811634349 -0.0768682907608696 -0.0766667506849315
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0756216298342541 -0.0750000821917808 -0.0743705027472528
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0726992554945055 -0.0725000794520548 -0.0668498901098901
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0638170544959128 -0.062671771978022 -0.0608334
##       Q1                   1                  1          1
##       Q2                   0                  0          0
##       Q3                   0                  0          0
##       Q4                   0                  0          0
##         y_rate_haz
## perdiar6 -0.0601649010989011 -0.0596570635359116 -0.0580155040871934
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0569789421487603 -0.056876756097561 -0.0551511593406593
##       Q1                   1                  1                   2
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0550000602739726 -0.0547669113573407 -0.0544651652892562
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0536272396694215 -0.0528986086956522 -0.0525000575342466
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0522139536784741 -0.0516667232876712 -0.0506945
##       Q1                   1                   1          1
##       Q2                   0                   0          0
##       Q3                   0                   0          0
##       Q4                   0                   0          0
##         y_rate_haz
## perdiar6 -0.0502755371900826 -0.0500000547945205 -0.0488987820163488
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0485996859504132 -0.0484661703296703 -0.0472411961852861
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0465392131147541 -0.0459592994505495 -0.0458333835616439
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0447801416666667 -0.043572132231405 -0.0426168049450549
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0409455576923077 -0.0400000438356164 -0.0392743104395604
##       Q1                   1                   1                   2
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0391667095890411 -0.0390829106145251 -0.0388474157608696
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0367674395604396 -0.0366667068493151 -0.0358333726027397
##       Q1                   2                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0344498535911602 -0.0338881711956521 -0.0332422950819672
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0325893214285714 -0.0315801803278688 -0.0309180741758242
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0303324432132964 -0.0300824505494506 -0.0292468269230769
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0283333643835616 -0.0279504810810811 -0.026666695890411
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0257627786885246 -0.0242330851648352 -0.0240349945504087
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0234619173553719 -0.0225618379120879 -0.0209481404958678
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0193790609418283 -0.0191666876712329 -0.0191143196721311
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0190104375 -0.0182334441416894 -0.0175000191780822
##       Q1             1                   1                   1
##       Q2             0                   0                   0
##       Q3             0                   0                   0
##       Q4             0                   0                   0
##         y_rate_haz
## perdiar6 -0.0166211475409836 -0.0159205867768595 -0.0158333506849315
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0157900901639344 -0.0141666821917808 -0.0133333479452055
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0125688842975207 -0.0108631071428571 -0.0108333452054794
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0107450298913043 -0.0107159105691057 -0.00842567867036012
##       Q1                   1                   1                    1
##       Q2                   0                   0                    0
##       Q3                   0                   0                    0
##       Q4                   0                   0                    0
##         y_rate_haz
## perdiar6 -0.00833334246575343 -0.00828792915531334 -0.0082430081300813
##       Q1                    1                    1                   1
##       Q2                    0                    0                   0
##       Q3                    0                    0                   0
##       Q4                    0                    0                   0
##         y_rate_haz
## perdiar6 -0.00824300813008129 -0.00745913623978201 -0.00666667397260273
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.00581740163934427 -0.00500000547945206 -0.0049592445652174
##       Q1                    1                    1                   2
##       Q2                    0                    0                   0
##       Q3                    0                    0                   0
##       Q4                    0                    0                   0
##         y_rate_haz
## perdiar6 -0.00418962809917354 -0.00416667123287673 -0.0041666712328767
##       Q1                    1                    1                   1
##       Q2                    0                    0                   0
##       Q3                    0                    0                   0
##       Q4                    0                    0                   0
##         y_rate_haz
## perdiar6 -0.00415528688524592 -0.0033424945054945 -0.00250687087912088
##       Q1                    1                   1                    1
##       Q2                    0                   0                    0
##       Q3                    0                   0                    0
##       Q4                    0                   0                    0
##         y_rate_haz
## perdiar6 -0.00167585123966942 -0.00166211475409836 -0.000840240331491713
##       Q1                    2                    1                     1
##       Q2                    0                    0                     0
##       Q3                    0                    0                     0
##       Q4                    0                    0                     0
##         y_rate_haz
## perdiar6 -0.000835623626373627 -0.000831057377049181 0
##       Q1                     1                     1 3
##       Q2                     0                     0 0
##       Q3                     0                     0 0
##       Q4                     0                     0 0
##         y_rate_haz
## perdiar6 0.000813280748663102 0.000833334246575362 0.000835623626373646
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 0.00166666849315069 0.00167124725274725 0.00336096132596685
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.00500000547945206 0.00501374175824176 0.00831057377049179
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.00916667671232877 0.0091918598901099 0.00919185989010992
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 0.00921718181818181 0.0100551074380165 0.0101389
##       Q1                   1                  1         1
##       Q2                   0                  0         0
##       Q3                   0                  0         0
##       Q4                   0                  0         0
##         y_rate_haz
## perdiar6 0.0108333452054794 0.0115715706521739 0.012364512195122
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 0.0124658606557377 0.0141666821917808 0.0157900901639344
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0158333506849315 0.0158768489010989 0.0166666849315068
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0167585123966942 0.0172332577903683 0.0181838967391304
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0190104375 0.0200000219178082 0.020054967032967
##       Q1            1                  2                 1
##       Q2            0                  0                 0
##       Q3            0                  0                 0
##       Q4            0                  0                 0
##         y_rate_haz
## perdiar6 0.0201102148760331 0.0208905906593407 0.0225618379120879
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0226239917355372 0.0250000273972603 0.0251377685950413
##       Q1                  2                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0252770360110803 0.0283333643835616 0.0331517166212534
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0334249450549451 0.0348093024523161 0.0372956811989101
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0385445785123967 0.0413270380434783 0.0419257216216216
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0422684386920981 0.0434524285714286 0.0453365447154472
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0471128233695652 0.0475000520547945 0.0494376115702479
##       Q1                  1                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0500000547945205 0.0506945 0.0511066504065041
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 0.0577010569105691 0.0593292774725275 0.0603306446280992
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0610005247252747 0.0613306757493188 0.0628444214876033
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0636436385869565 0.0648224754098361 0.0649437648648649
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0664845901639344 0.0685211373626374 0.0696186049046321
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0701923846153846 0.0702559646739131 0.0710280082417582
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0802198681318681 0.089411728021978 0.0905852540983606
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 0.0914163114754098 0.0954249411764706 0.10361732967033
##       Q1                  1                  1                1
##       Q2                  0                  0                0
##       Q3                  0                  0                0
##       Q4                  0                  0                0
##         y_rate_haz
## perdiar6 0.104740702479339 0.113644813186813 0.126526768595041
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.187500205479452 0.189166873972603
##       Q1                 1                 1
##       Q2                 0                 0
##       Q3                 0                 0
##       Q4                 0                 0
##         y_rate_haz
## perdiar6 -0.181666865753425 -0.166587376021798 -0.158731959016393
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.155425994505494 -0.147500161643836 -0.147069758241758
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.137419801652893 -0.13675083106267 -0.135462352459016
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.135000147945205 -0.132864156593407 -0.132028532967033
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.131063829268293 -0.130716396694215 -0.128686038461538
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.127500139726027 -0.123827549180328 -0.123154573369565
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.1216668 -0.120329802197802 -0.119823363636364
##       Q1          1                  1                  1
##       Q2          0                  0                  0
##       Q3          0                  0                  0
##       Q4          0                  0                  0
##         y_rate_haz
## perdiar6 -0.116666794520548 -0.11563373553719 -0.113333457534247
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.112409543478261 -0.107795447802198 -0.106959824175824
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.104427907356948 -0.104166780821918 -0.102220057377049
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.101110458791209 -0.100833443835616 -0.0980647704918033
##       Q1                  1                  1                   1
##       Q2                  0                  0                   0
##       Q3                  0                  0                   0
##       Q4                  0                  0                   0
##         y_rate_haz
## perdiar6 -0.0966667726027397 -0.096096717032967 -0.0958787282608696
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.095000104109589 -0.0941667698630137 -0.0916667671232877
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0911672207084469 -0.0897541967213115 -0.0877404807692308
##       Q1                   1                   1                   2
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0850993545706371 -0.0833334246575342 -0.0810009945652174
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0808334219178082 -0.0806125655737705 -0.0793479130434783
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0766667506849315 -0.0743705027472528 -0.0743705027472527
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0737625694822888 -0.0735348791208791 -0.0716667452054795
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0710280082417582 -0.0701923846153846 -0.069356760989011
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0691667424657534 -0.0679610190735695 -0.0654746403269755
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0652967201086957 -0.0651786428571429 -0.0644701793478261
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0641667369863013 -0.0639914180327869 -0.0625000684931507
##       Q1                   1                   2                   2
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0620064958677686 -0.0616667342465754 -0.0614982459016394
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0610005247252747 -0.0608334 -0.0600000657534246
##       Q1                   1          1                   1
##       Q2                   0          0                   0
##       Q3                   0          0                   0
##       Q4                   0          0                   0
##         y_rate_haz
## perdiar6 -0.0591667315068493 -0.058333397260274 -0.0576580302197802
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0565119016393442 -0.055833394520548 -0.0550000602739726
##       Q1                   1                  2                   2
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0545516902173913 -0.0541667260273972 -0.0540187295081967
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0533333917808219 -0.0527552520325203 -0.0518086648351648
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0508333890410959 -0.0506945 -0.0500000547945205
##       Q1                   1          1                   1
##       Q2                   0          0                   0
##       Q3                   0          0                   0
##       Q4                   0          0                   0
##         y_rate_haz
## perdiar6 -0.049301793956044 -0.0491667205479452 -0.0483333863013699
##       Q1                  1                   2                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0475000520547945 -0.0472411961852861 -0.0464124032697548
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0457081557377049 -0.0433333808219178 -0.0413270380434783
##       Q1                   1                   3                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0400000438356164 -0.0387421382113821 -0.0376030631868132
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0359318159340659 -0.0350961923076923 -0.0349044098360656
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0348093024523161 -0.0338881711956522 -0.033424945054945
##       Q1                   1                   1                  2
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.031666701369863 -0.0306653378746594 -0.0300824505494505
##       Q1                  2                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0290870081967213 -0.0283333643835616 -0.0278047396121884
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0267399560439561 -0.0248637874659401 -0.0240349945504087
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0239696820652174 -0.0227493324099723 -0.0215486158038147
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0206075203252033 -0.0175480961538462 -0.0174522049180328
##       Q1                   1                   3                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.017404651226158 -0.0165758583106267 -0.0158768489010989
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0156617154471545 -0.0125000136986301 -0.0115715706521739
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0108333452054794 -0.010000010958904 -0.00916667671232876
##       Q1                   1                  1                    1
##       Q2                   0                  0                    0
##       Q3                   0                  0                    0
##       Q4                   0                  0                    0
##         y_rate_haz
## perdiar6 -0.00835623626373625 -0.00581740163934426 -0.00581740163934425
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.00498634426229509 -0.00332422950819672 -0.00330616304347826
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.000828792915531354 -0.000828792915531317 0
##       Q1                     1                     1 2
##       Q2                     0                     0 0
##       Q3                     0                     0 0
##       Q4                     0                     0 0
##         y_rate_haz
## perdiar6 0.000833334246575362 0.00166666849315069 0.00249317213114752
##       Q1                    1                   1                   2
##       Q2                    0                   0                   0
##       Q3                    0                   0                   0
##       Q4                    0                   0                   0
##         y_rate_haz
## perdiar6 0.00250687087912087 0.00333333698630137 0.00501374175824173
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.00584936538461537 0.00584936538461539 0.00747951639344261
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.00750000821917807 0.0100274835164835 0.01243189373297
##       Q1                   2                  1                1
##       Q2                   0                  0                0
##       Q3                   0                  0                0
##       Q4                   0                  0                0
##         y_rate_haz
## perdiar6 0.0134068099173554 0.0141666821917808 0.0150000164383562
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0150412252747253 0.0150826611570248 0.0157470653950954
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0158333506849315 0.0167585123966942 0.0174522049180328
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0175480961538462 0.0207198228882834 0.0225000246575342
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0233333589041096 0.0275755796703297 0.0290870081967213
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.02940841160221 0.0314085489130435 0.0348093024523161
##       Q1                1                  1                  1
##       Q2                0                  0                  0
##       Q3                0                  0                  0
##       Q4                0                  0                  0
##         y_rate_haz
## perdiar6 0.0363677934782609 0.0376030631868132 0.0382286393442623
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0401099340659341 0.0407218114754098 0.0410583553719008
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0427477945945946 0.0434524285714286 0.0491667205479452
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0505563678474115 0.0533333917808219 0.0541667260273972
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0545516902173913 0.0629882615803815 0.0666667397260274
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0669498016304348 0.0716667452054795 0.0743705027472527
##       Q1                  1                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0764572786885246 0.0810554917582417 0.159128239782016
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.141099691666667 -0.119377370967742 -0.102854158959538
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.081827535326087 -0.0813280748663101 -0.0789237988338192
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0703227325905292 -0.0641667369863014 -0.0611933609467456
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0561672017045454 -0.0525820611702128 -0.0469286228571429
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0425656443148688 -0.038326672922252 -0.0375321748071979
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0336141428571429 -0.0285435307917889 -0.0234619173553719
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.018958918699187 -0.0183333534246575 -0.0173103170731707
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0169429893899204 -0.0100828839779006 -0.00657658378378379
##       Q1                   1                   1                    1
##       Q2                   0                   0                    0
##       Q3                   0                   0                    0
##       Q4                   0                   0                    0
##         y_rate_haz
## perdiar6 -0.00327942857142857 -0.000833334246575343 0 0.00174307736389685
##       Q1                    1                     1 1                   1
##       Q2                    0                     0 0                   0
##       Q3                    0                     0 0                   0
##       Q4                    0                     0 0                   0
##         y_rate_haz
## perdiar6 0.0169925698324022 0.0175174712041885 0.0185075158730159
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0196512387640449 0.027350166212534 0.058333397260274
##       Q1                  1                 1                 1
##       Q2                  0                 0                 0
##       Q3                  0                 0                 0
##       Q4                  0                 0                 0
##         y_rate_haz
## perdiar6 -0.695238857142857 -0.691896362637363 -0.663342925531915
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.628388967032967 -0.534799120879121 -0.492135370786517
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.451236758241758 -0.444551769230769 -0.443307223404255
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.410949031914894 -0.384386868131868 -0.359767419354839
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.353759445652174 -0.337591945054945 -0.3244448
##       Q1                  1                  1          1
##       Q2                  0                  0          0
##       Q3                  0                  0          0
##       Q4                  0                  0          0
##         y_rate_haz
## perdiar6 -0.317992772727273 -0.297625774193548 -0.297482010989011
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.290648466666667 -0.274411532608696 -0.272149421052632
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.26739956043956 -0.254029582417582 -0.249485292134831
##       Q1                 2                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.245922255319149 -0.242650078651685 -0.239450617021277
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.238494579545455 -0.22812525 -0.220604637362637
##       Q1                  1           1                  1
##       Q2                  0           0                  0
##       Q3                  0           0                  0
##       Q4                  0           0                  0
##         y_rate_haz
## perdiar6 -0.207234659340659 -0.201638797752809 -0.20054967032967
##       Q1                  1                  1                 2
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.197207175824176 -0.190522186813187 -0.179883709677419
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.17743075 -0.176913459183673 -0.157097241758242
##       Q1           1                  1                  1
##       Q2           0                  0                  0
##       Q3           0                  0                  0
##       Q4           0                  0                  0
##         y_rate_haz
## perdiar6 -0.153754747252747 -0.143727263736264 -0.140384769230769
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.138858847826087 -0.13369978021978 -0.128940358695652
##       Q1                  1                 2                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.116022463917526 -0.115263284210526 -0.112409543478261
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.110302318681319 -0.0960527368421053 -0.0946297333333334
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0935898461538461 -0.0902473516483517 -0.0902473516483516
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0796627857142857 -0.0776596595744681 -0.0768773736263736
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0694294239130435 -0.068437575 -0.0679522021276596
##       Q1                   1            2                   1
##       Q2                   0            0                   0
##       Q3                   0            0                   0
##       Q4                   0            0                   0
##         y_rate_haz
## perdiar6 -0.0661232608695652 -0.0642130333333333 -0.0563272222222222
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0501374175824176 -0.0501374175824175 -0.0434524285714286
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0414773181818182 -0.0323581914893617 -0.0261649032258064
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0250859381443299 -0.020054967032967 -0.0172822159090909
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0101389000000001 -0.00668498901098901 -0.00668498901098894
##       Q1                   1                    1                    1
##       Q2                   0                    0                    0
##       Q3                   0                    0                    0
##       Q4                   0                    0                    0
##         y_rate_haz
## perdiar6 -0.00647163829787235 0 0.00330616304347826 0.00668498901098902
##       Q1                    2 2                   1                   1
##       Q2                    0 0                   0                   0
##       Q3                    0 0                   0                   0
##       Q4                    0 0                   0                   0
##         y_rate_haz
## perdiar6 0.0100274835164835 0.0129432765957447 0.013369978021978
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 0.0135185333333333 0.0233974615384615 0.0270370666666667
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0300824505494506 0.0304167 0.0327061290322581
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 0.0363677934782608 0.0367674395604395 0.0367674395604396
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0434524285714286 0.0473148666666666 0.0518466477272728
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0601649010989011 0.0621416451612903 0.0644118352941177
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0656724204545455 0.0694294239130435 0.0727355869565218
##       Q1                  1                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0744238404255319 0.0768773736263736 0.0835623626373626
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0869048571428571 0.0958787282608695 0.0958787282608696
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0969323406593407 0.101389 0.106959824175824 0.107353058823529
##       Q1                  1        1                 2                 1
##       Q2                  0        0                 0                 0
##       Q3                  0        0                 0                 0
##       Q4                  0        0                 0                 0
##         y_rate_haz
## perdiar6 0.110302318681319 0.120329802197802 0.123473732673267
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.128426066666667 0.128940358695652 0.130357285714286
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.132585615384615 0.132668585106383 0.134801284090909
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.138564966666667 0.139846896551724 0.140384769230769
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.143539483146067 0.143727263736264 0.145324233333333
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.147069758241758 0.150412252747253 0.155319319148936
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.157097241758242 0.162001989130435 0.169693168421053
##       Q1                 1                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.170880337078652 0.173809714285714 0.174734234042553
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.175226641304348 0.176278602272727 0.185879833333333
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.193864681318681 0.197207175824176 0.198369782608696
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.199398366666667 0.206157633333333 0.210577153846154 0.2230558
##       Q1                 1                 1                 1         1
##       Q2                 0                 0                 0         0
##       Q3                 0                 0                 0         0
##       Q4                 0                 0                 0         0
##         y_rate_haz
## perdiar6 0.223947131868132 0.229743159574468 0.232598294117647
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.240659604395604 0.252393893617021 0.257880717391304
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.25871675862069 0.26739956043956 0.268572989361702
##       Q1                1                1                 1
##       Q2                0                0                 0
##       Q3                0                0                 0
##       Q4                0                0                 0
##         y_rate_haz
## perdiar6 0.271105369565217 0.284956452631579 0.287636184782609
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.293914179775281 0.297482010989011 0.307584606741573
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.310638638297872 0.313874457446808 0.315432444444444
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.317837426966292 0.317992772727273 0.330906956043956
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.344276934065934 0.350961923076923 0.354304417582418
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.364331901098901 0.37101689010989 0.3865455625 0.387729362637363
##       Q1                 1                1            1                 1
##       Q2                 0                0            0                 0
##       Q3                 0                0            0                 0
##       Q4                 0                0            0                 0
##         y_rate_haz
## perdiar6 0.390127239130435 0.392473548387097 0.397017978947368
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.403351891304348 0.407713212765957 0.409964217391304
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.417420670212766 0.429035557894737 0.434524285714286
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.437453662921348 0.440871269662921 0.441209274725275
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.446332010869565 0.467949230769231 0.498970584269663
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.509223404494382 0.511553590909091 0.524771637362637
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.530602433333333 0.5475006 0.556004193548387 0.639441988636364
##       Q1                 1         1                 1                 1
##       Q2                 0         0                 0                 0
##       Q3                 0         0                 0                 0
##       Q4                 0         0                 0                 0
##         y_rate_haz
## perdiar6 0.6691674 0.743886684782609 0.779832414893617
##       Q1         1                 1                 1
##       Q2         0                 0                 0
##       Q3         0                 0                 0
##       Q4         0                 0                 0
##         y_rate_haz
## perdiar6 -1.05135984782609 -0.822633477272727 -0.767176766666667
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.634783304347826 -0.608334 -0.602126510204082
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 -0.561539076923077 -0.558196582417582 -0.518086648351648
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.498031681318681 -0.495080329787234 -0.489312130434783
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.45941890625 -0.454579252747253 -0.454461282352941
##       Q1              1                  1                  1
##       Q2              0                  0                  0
##       Q3              0                  0                  0
##       Q4              0                  0                  0
##         y_rate_haz
## perdiar6 -0.44480335483871 -0.434524285714286 -0.418638451612903
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.40778432967033 -0.402059827586207 -0.372966678571429
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.37101689010989 -0.354304417582418 -0.352193368421053
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.342624896551724 -0.339761010638298 -0.327564461538462
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.327310141304348 -0.324221967032967 -0.323581914893617
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.316974031578947 -0.316840625 -0.307546633333333
##       Q1                  1            1                  1
##       Q2                  0            0                  0
##       Q3                  0            0                  0
##       Q4                  0            0                  0
##         y_rate_haz
## perdiar6 -0.300860836956522 -0.297554673913043 -0.297407733333333
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.29456172631579 -0.287987904255319 -0.277427043956044
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.277129933333333 -0.271364676470588 -0.271105369565217
##       Q1                  1                  1                  2
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.2636114 -0.257880717391304 -0.257372076923077
##       Q1          1                  2                  2
##       Q2          0                  0                  0
##       Q3          0                  0                  0
##       Q4          0                  0                  0
##         y_rate_haz
## perdiar6 -0.248863909090909 -0.248566580645161 -0.247344593406593
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.2433336 -0.22812525 -0.223947131868132 -0.214900597826087
##       Q1          2           1                  1                  1
##       Q2          0           0                  0                  0
##       Q3          0           0                  0                  0
##       Q4          0           0                  0                  0
##         y_rate_haz
## perdiar6 -0.210577153846154 -0.205056404494382 -0.203892164835165
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.202778 -0.199398366666667 -0.193864681318681
##       Q1         1                  1                  2
##       Q2         0                  0                  0
##       Q3         0                  0                  0
##       Q4         0                  0                  0
##         y_rate_haz
## perdiar6 -0.190913329787234 -0.188451293478261 -0.187677510638298
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.175226641304348 -0.174297943820225 -0.166801258064516
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.163782230769231 -0.157097241758242 -0.150482621052632
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.148847680851064 -0.145471173913044 -0.145324233333333
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.140121876404494 -0.138858847826087 -0.127014791208791
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.125634195652174 -0.125046433333333 -0.1216668
##       Q1                  1                  1          1
##       Q2                  0                  0          0
##       Q3                  0                  0          0
##       Q4                  0                  0          0
##         y_rate_haz
## perdiar6 -0.116715244186046 -0.107930225806452 -0.1077258125
##       Q1                  1                  1             1
##       Q2                  0                  0             0
##       Q3                  0                  0             0
##       Q4                  0                  0             0
##         y_rate_haz
## perdiar6 -0.106959824175824 -0.102491054347826 -0.101389
##       Q1                  1                  1         1
##       Q2                  0                  0         0
##       Q3                  0                  0         0
##       Q4                  0                  0         0
##         y_rate_haz
## perdiar6 -0.0991848913043479 -0.0958787282608696 -0.0906029361702128
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0835623626373626 -0.0745507352941176 -0.0701923846153846
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0628170978260869 -0.0540741333333334 -0.0534799120879121
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0528986086956521 -0.0501374175824175 -0.0480263684210526
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0467949230769231 -0.0462862826086957 -0.0462862826086956
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0453014680851063 -0.0401099340659341 -0.0367674395604396
##       Q1                   1                   3                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0367674395604395 -0.03485246875 -0.034141193877551
##       Q1                   1              1                  1
##       Q2                   0              0                  0
##       Q3                   0              0                  0
##       Q4                   0              0                  0
##         y_rate_haz
## perdiar6 -0.0320175789473684 -0.0304167 -0.0300824505494505
##       Q1                   1          1                   1
##       Q2                   0          0                   0
##       Q3                   0          0                   0
##       Q4                   0          0                   0
##         y_rate_haz
## perdiar6 -0.0294355161290322 -0.026739956043956 -0.0250490470588235
##       Q1                   1                  2                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0184343636363637 -0.0163530645161291 -0.016353064516129
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0153619696969696 -0.0122895757575758 -0.0100274835164835
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.00699234482758614 -0.00661232608695653 -0.00647163829787235
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.00334249450549451 -0.00323581914893617 0 0.00668498901098902
##       Q1                    1                    1 3                   1
##       Q2                    0                    0 0                   0
##       Q3                    0                    0 0                   0
##       Q4                    0                    0 0                   0
##         y_rate_haz
## perdiar6 0.00738269417475726 0.0097074574468085 0.00970745744680859
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 0.012542969072165 0.0158420312499999 0.016353064516129
##       Q1                 1                  1                 1
##       Q2                 0                  0                 0
##       Q3                 0                  0                 0
##       Q4                 0                  0                 0
##         y_rate_haz
## perdiar6 0.0192105473684211 0.0231431413043478 0.0233974615384616
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0300824505494505 0.0341760674157303 0.0372449387755102
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.038020875 0.0495924456521739 0.0528986086956522
##       Q1           1                  2                  1
##       Q2           0                  0                  0
##       Q3           0                  0                  0
##       Q4           0                  0                  0
##         y_rate_haz
## perdiar6 0.0576316421052631 0.0635073956043956 0.0820225617977529
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0823040117647059 0.0859602391304348 0.0873671170212766
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0888577752808989 0.089266402173913 0.0938387553191489
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 0.0991848913043478 0.100310393617021 0.101389 0.11001785106383
##       Q1                  1                 1        1                1
##       Q2                  0                 0        0                0
##       Q3                  0                 0        0                0
##       Q4                  0                 0        0                0
##         y_rate_haz
## perdiar6 0.115715706521739 0.118869862068966 0.130357285714286
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.13224652173913 0.13369978021978 0.138257727272727
##       Q1                1                1                 1
##       Q2                0                0                 0
##       Q3                0                0                 0
##       Q4                0                0                 0
##         y_rate_haz
## perdiar6 0.138858847826087 0.142165010869565 0.147069758241758
##       Q1                 2                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.148703866666667 0.150412252747253 0.155389663043478
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.158695826086957 0.160439736263736 0.164045123595506
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.175226641304348 0.177152208791209 0.177715550561798
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.183191488636364 0.188793310344828 0.209537266666667
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.211316021052632 0.213564063829787 0.214299477272727
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.215309224719101 0.216296533333333 0.221512923913043 0.2230558
##       Q1                 1                 1                 1         1
##       Q2                 0                 0                 0         0
##       Q3                 0                 0                 0         0
##       Q4                 0                 0                 0         0
##         y_rate_haz
## perdiar6 0.235180670103093 0.251268391304348 0.26491964516129
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 0.270370666666667 0.274084549450549 0.28198815625
##       Q1                 1                 1             1
##       Q2                 0                 0             0
##       Q3                 0                 0             0
##       Q4                 0                 0             0
##         y_rate_haz
## perdiar6 0.284112032967033 0.28433002173913 0.284543322580645
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_haz
## perdiar6 0.290797021978022 0.2940281 0.300965242105263 0.304167
##       Q1                 1         1                 1        1
##       Q2                 0         0                 0        0
##       Q3                 0         0                 0        0
##       Q4                 0         0                 0        0
##         y_rate_haz
## perdiar6 0.310779326086957 0.313772273684211 0.314085489130435
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.321449215909091 0.324672640449438 0.330906956043956
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.333922467391304 0.3345837 0.337228630434783 0.345178280898876
##       Q1                 2         1                 1                 1
##       Q2                 0         0                 0                 0
##       Q3                 0         0                 0                 0
##       Q4                 0         0                 0                 0
##         y_rate_haz
## perdiar6 0.347147119565217 0.351481866666667 0.37101689010989
##       Q1                 1                 1                2
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 0.381898566666667 0.400947409090909 0.409964217391304
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.412097225806452 0.413270380434783 0.427839296703297 0.4359727
##       Q1                 1                 1                 1         1
##       Q2                 0                 0                 0         0
##       Q3                 0                 0                 0         0
##       Q4                 0                 0                 0         0
##         y_rate_haz
## perdiar6 0.444322382352941 0.463009766666667 0.488717764044944
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.490046833333333 0.518466477272727 0.533910159574468
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.539205136363636 0.550702357894737 0.558741554347826
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.594815466666667 0.661813912087912 0.67518389010989
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 0.703181774193548 0.763723663043478 0.876906989361702
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 1.02575467021277
##       Q1                1
##       Q2                0
##       Q3                0
##       Q4                0
##         y_rate_haz
## perdiar6 -0.720743543478261 -0.691288636363636 -0.631477141304348
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.628388967032967 -0.562047717391304 -0.54148410989011
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.51245527173913 -0.506945 -0.501551968085106 -0.499230619565217
##       Q1                 1         1                  1                  1
##       Q2                 0         0                  0                  0
##       Q3                 0         0                  0                  0
##       Q4                 0         0                  0                  0
##         y_rate_haz
## perdiar6 -0.4879345625 -0.484661703296703 -0.47608747826087
##       Q1             1                  1                 1
##       Q2             0                  0                 0
##       Q3             0                  0                 0
##       Q4             0                  0                 0
##         y_rate_haz
## perdiar6 -0.469475152173913 -0.443025847826087 -0.429412235294118
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.427839296703297 -0.424496802197802 -0.421686068181818
##       Q1                  3                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.416576543478261 -0.413270380434783 -0.412548344827586
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.402176366666667 -0.401099340659341 -0.395744161290323
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.393433402173913 -0.391071857142857 -0.37101689010989
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.367674395604396 -0.365647563829787 -0.361620766666667
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.344276934065934 -0.343840956521739 -0.33834306741573
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.337591945054945 -0.330906956043956 -0.327824433333333
##       Q1                  3                  1                  2
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.317685533333333 -0.317536978021978 -0.314194483516484
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.310851989010989 -0.304167 -0.300860836956522
##       Q1                  2         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 -0.300824505494506 -0.300824505494505 -0.300749393258427
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.297695361702128 -0.297482010989011 -0.294139516483516
##       Q1                  1                  2                  2
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.277427043956044 -0.273129551020408 -0.270370666666667
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.26739956043956 -0.257372076923077 -0.251268391304348
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.248863909090909 -0.23731710989011 -0.233728326315789
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.205221108433735 -0.203892164835165 -0.201675945652174
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.200620787234043 -0.197207175824176 -0.184441691489362
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.180494703296703 -0.178532804347826 -0.177152208791209
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.173809714285714 -0.17192047826087 -0.170880337078652
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.17046721978022 -0.165909272727273 -0.165308152173913
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.164320103448276 -0.163782230769231 -0.158695826086957
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.1584203125 -0.156989419354839 -0.155463133333333 -0.1520835
##       Q1             1                  1                  1          1
##       Q2             0                  0                  0          0
##       Q3             0                  0                  0          0
##       Q4             0                  0                  0          0
##         y_rate_haz
## perdiar6 -0.150412252747253 -0.148703866666667 -0.148627056818182
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.147177580645161 -0.142376042553191 -0.1419446
##       Q1                  1                  1          1
##       Q2                  0                  0          0
##       Q3                  0                  0          0
##       Q4                  0                  0          0
##         y_rate_haz
## perdiar6 -0.139846896551724 -0.138858847826087 -0.138564966666667
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.137042274725275 -0.13369978021978 -0.13127207368421
##       Q1                  1                 1                 1
##       Q2                  0                 0                 0
##       Q3                  0                 0                 0
##       Q4                  0                 0                 0
##         y_rate_haz
## perdiar6 -0.128426066666667 -0.127888397727273 -0.127014791208791
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.123788895348837 -0.121012677419355 -0.116987307692308
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.110302318681319 -0.108148266666667 -0.105945808988764
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.100310393617021 -0.0980093666666666 -0.0935898461538461
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0933239659090909 -0.0922753820224719 -0.0883065483870968
##       Q1                   3                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0873671170212766 -0.0727355869565217 -0.0701923846153846
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0679522021276596 -0.0629311034482759 -0.0614805638297872
##       Q1                   1                   1                   2
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0601649010989011 -0.0562047717391304 -0.0528986086956521
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.046794923076923 -0.0429801195652174 -0.0420656489361702
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0401099340659341 -0.0352193368421054 -0.0327061290322581
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.032706129032258 -0.031465551724138 -0.0270370666666667
##       Q1                  1                  1                   1
##       Q2                  0                  0                   0
##       Q3                  0                  0                   0
##       Q4                  0                  0                   0
##         y_rate_haz
## perdiar6 -0.0267399560439561 -0.0264493043478261 -0.0198369782608695
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0136704269662921 -0.0135185333333333 -0.013369978021978
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0102528202247191 -0.00991848913043479 -0.00661232608695653 0
##       Q1                   1                    1                    1 1
##       Q2                   0                    0                    0 0
##       Q3                   0                    0                    0 0
##       Q4                   0                    0                    0 0
##         y_rate_haz
## perdiar6 0.00661232608695652 0.00668498901098901 0.0132246521739131
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 0.013369978021978 0.0165308152173913 0.0168981666666667
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 0.020054967032967 0.0202777999999999 0.0231431413043478
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 0.0233974615384616 0.0297554673913044 0.0300824505494506
##       Q1                  2                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0341760674157303 0.0429801195652174 0.0434524285714285
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0434524285714286 0.049592445652174 0.0501374175824176
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 0.0553030909090909 0.0595109347826086 0.0601649010989012
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0661232608695652 0.0675926666666667 0.0683521348314607
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0701923846153846 0.0735348791208791 0.0802198681318681
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0808954787234042 0.0859602391304348 0.0873671170212766
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0912501 0.0935898461538462 0.115373689655172 0.115715706521739
##       Q1         1                  1                 1                 1
##       Q2         0                  0                 0                 0
##       Q3         0                  0                 0                 0
##       Q4         0                  0                 0                 0
##         y_rate_haz
## perdiar6 0.116987307692308 0.1216668 0.122961127659574 0.127014791208791
##       Q1                 1         1                 1                 3
##       Q2                 0         0                 0                 0
##       Q3                 0         0                 0                 0
##       Q4                 0         0                 0                 0
##         y_rate_haz
## perdiar6 0.129432765957447 0.130357285714286 0.142165010869565
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.148777336956522 0.1520835 0.155389663043478 0.155463133333333
##       Q1                 1         2                 1                 1
##       Q2                 0         0                 0                 0
##       Q3                 0         0                 0                 0
##       Q4                 0         0                 0                 0
##         y_rate_haz
## perdiar6 0.156886136842105 0.165308152173913 0.167124725274725
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.168262595744681 0.175226641304348 0.186647931818182
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.190522186813187 0.195785655172414 0.198369782608696
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.207234659340659 0.20828827173913 0.221512923913044
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_haz
## perdiar6 0.233974615384615 0.239953966666667 0.241349902173913 0.2534725
##       Q1                 1                 1                 1         1
##       Q2                 0                 0                 0         0
##       Q3                 0                 0                 0         0
##       Q4                 0                 0                 0         0
##         y_rate_haz
## perdiar6 0.257880717391304 0.258378419354839 0.267799206521739
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.271460870967742 0.276515454545455 0.277717695652174 0.304167
##       Q1                 1                 1                 1        2
##       Q2                 0                 0                 0        0
##       Q3                 0                 0                 0        0
##       Q4                 0                 0                 0        0
##         y_rate_haz
## perdiar6 0.307546633333333 0.310851989010989 0.3143059 0.321851127906977
##       Q1                 1                 1         1                 1
##       Q2                 0                 0         0                 0
##       Q3                 0                 0         0                 0
##       Q4                 0                 0         0                 0
##         y_rate_haz
## perdiar6 0.324221967032967 0.327564461538462 0.340534793478261 0.342187875
##       Q1                 2                 1                 1           1
##       Q2                 0                 0                 0           0
##       Q3                 0                 0                 0           0
##       Q4                 0                 0                 0           0
##         y_rate_haz
## perdiar6 0.367674395604396 0.369101528089888 0.397756846153846
##       Q1                 1                 1                 2
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.40004572826087 0.421154307692308 0.431181791208791
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.471291725274725 0.518086648351648 0.528986086956522
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.621277276595745
##       Q1                 1
##       Q2                 0
##       Q3                 0
##       Q4                 0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##         y_rate_haz
## perdiar6 -1.03078816666667 -0.819388653061224 -0.798438375 -0.783230025
##       Q1                 1                  1            1            1
##       Q2                 0                  0            0            0
##       Q3                 0                  0            0            0
##       Q4                 0                  0            0            0
##         y_rate_haz
## perdiar6 -0.730662032608696 -0.71195132967033 -0.695238857142857
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.64510143956044 -0.636628604651163 -0.630321975903614
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.6273444375 -0.608334 -0.582447446808511 -0.581884695652174
##       Q1             1         1                  1                  1
##       Q2             0         0                  0                  0
##       Q3             0         0                  0                  0
##       Q4             0         0                  0                  0
##         y_rate_haz
## perdiar6 -0.573114663157895 -0.53229225 -0.509014163265306 -0.4562505
##       Q1                  1           1                  1          1
##       Q2                  0           0                  0          0
##       Q3                  0           0                  0          0
##       Q4                  0           0                  0          0
##         y_rate_haz
## perdiar6 -0.435868175257732 -0.435511840909091 -0.434524285714286
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.405556 -0.389482134146341 -0.371759666666667
##       Q1         1                  1                  1
##       Q2         0                  0                  0
##       Q3         0                  0                  0
##       Q4         0                  0                  0
##         y_rate_haz
## perdiar6 -0.339386336842105 -0.337228630434783 -0.320520064516129
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.310851989010989 -0.292468269230769 -0.286274823529412
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.283428340909091 -0.268947663157895 -0.242609392857143
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.234737576086957 -0.215451625 -0.213738972972973
##       Q1                  1            1                  1
##       Q2                  0            0                  0
##       Q3                  0            0                  0
##       Q4                  0            0                  0
##         y_rate_haz
## perdiar6 -0.180693267326733 -0.163782230769231 -0.156886136842105
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.148703866666667 -0.143727263736264 -0.140121876404494
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.137599357142857 -0.124283290322581 -0.100196188235294
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.0806973673469388 -0.0608333999999999 -0.0549699397590362
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0506945 -0.0196236774193549 -0.01520835 0.0186224693877551
##       Q1          1                   1           1                  1
##       Q2          0                   0           0                  0
##       Q3          0                   0           0                  0
##       Q4          0                   0           0                  0
##         y_rate_haz
## perdiar6 0.0329819638554216 0.0371759666666667 0.0459787325581395
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0473148666666667 0.0530523837209302 0.0691288636363636
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0706650606060606 0.0709723 0.0727355869565217
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 0.0794981931818182 0.101389 0.108899296296296 0.124068118421053
##       Q1                  1        1                 1                 1
##       Q2                  0        0                 0                 0
##       Q3                  0        0                 0                 0
##       Q4                  0        0                 0                 0
##         y_rate_haz
## perdiar6 0.127888397727273 0.142376042553191 0.172894926315789
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.176278602272727 0.202778 0.213266517241379 0.226270573170732
##       Q1                 1        1                 1                 1
##       Q2                 0        0                 0                 0
##       Q3                 0        0                 0                 0
##       Q4                 0        0                 0                 0
##         y_rate_haz
## perdiar6 0.240504139534884 0.264335607142857 0.34623264893617
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 0.396572164556962 0.40758378 0.5475006 1.01273785227273
##       Q1                 1          1         1                1
##       Q2                 0          0         0                0
##       Q3                 0          0         0                0
##       Q4                 0          0         0                0
##         y_rate_haz
## perdiar6 1.04937615 1.29270975
##       Q1          1          1
##       Q2          0          0
##       Q3          0          0
##       Q4          0          0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##         y_rate_haz
## perdiar6 -0.637928627027027 -0.304167 -0.281272709677419
##       Q1                  1         1                  1
##       Q2                  0         0                  0
##       Q3                  0         0                  0
##       Q4                  0         0                  0
##         y_rate_haz
## perdiar6 -0.256486767567568 -0.256227635869565 -0.24202535483871
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.212094827027027 -0.196129540983607 -0.18885093956044
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.184494737704918 -0.18283262295082 -0.182165950549451
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.180856054054054 -0.167873590163934 -0.165453478021978
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.165026776595745 -0.162110983516484 -0.161895338709677
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.153754747252747 -0.152923740331492 -0.1520835
##       Q1                  1                  1          1
##       Q2                  0                  0          0
##       Q3                  0                  0          0
##       Q4                  0                  0          0
##         y_rate_haz
## perdiar6 -0.139479895027624 -0.13369978021978 -0.132757972375691
##       Q1                  1                 2                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.129189209677419 -0.128940358695652 -0.127014791208791
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.124955091891892 -0.122001049450549 -0.12133437704918
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.11531606043956 -0.111973565934066 -0.111801924324324
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.110302318681319 -0.106294919354839 -0.105225340540541
##       Q1                  2                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.100837972826087 -0.0991848913043478 -0.095967128342246
##       Q1                  1                   1                  1
##       Q2                  0                   0                  0
##       Q3                  0                   0                  0
##       Q4                  0                   0                  0
##         y_rate_haz
## perdiar6 -0.0952610934065934 -0.0919185989010989 -0.090428027027027
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0869048571428571 -0.0859602391304348 -0.0823435524861878
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0818911153846154 -0.0805631513513513 -0.0801300161290322
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0785486208791209 -0.0739865675675676 -0.0706982756756757
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.06590285 -0.0641216918918919 -0.0621416451612903
##       Q1           1                   1                   1
##       Q2           0                   0                   0
##       Q3           0                   0                   0
##       Q4           0                   0                   0
##         y_rate_haz
## perdiar6 -0.0584936538461538 -0.0572357258064516 -0.0542568162162162
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0523843166666667 -0.0518086648351648 -0.0509777094972067
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0509685243243243 -0.0501374175824176 -0.0493243783783784
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0455437219251337 -0.0427477945945946 -0.0417811813186813
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.040109934065934 -0.0384386868131868 -0.0365665245901639
##       Q1                  1                   2                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.035290093922652 -0.034341435483871 -0.0332422950819672
##       Q1                  1                  1                   1
##       Q2                  0                  0                   0
##       Q3                  0                  0                   0
##       Q4                  0                  0                   0
##         y_rate_haz
## perdiar6 -0.0327061290322581 -0.029594627027027 -0.0268876906077348
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0264493043478261 -0.0228942903225806 -0.0213738972972973
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0212589838709677 -0.020054967032967 -0.0198369782608696
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0171845762711865 -0.0167124725274725 -0.0166211475409836
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0150412252747253 -0.0149590327868852 -0.006684989010989
##       Q1                   2                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.00657658378378375 -0.00330616304347826 -0.00165308152173913 0
##       Q1                    1                    1                    1 2
##       Q2                    0                    0                    0 0
##       Q3                    0                    0                    0 0
##       Q4                    0                    0                    0 0
##         y_rate_haz
## perdiar6 0.00509777094972067 0.00826540760869562 0.00835623626373623
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.00835623626373627 0.013369978021978 0.0151243259668508
##       Q1                   1                 1                  1
##       Q2                   0                 0                  0
##       Q3                   0                 0                  0
##       Q4                   0                 0                  0
##         y_rate_haz
## perdiar6 0.0166211475409836 0.0179883709677419 0.0183837197802198
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0213738972972973 0.0233974615384615 0.0243984224598931
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0245295967741935 0.0246621891891892 0.0249317213114754
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0250687087912088 0.0263063351351351 0.0265938360655738
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.026739956043956 0.0299180655737705 0.0300824505494506
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 0.0310708225806452 0.0324672640449438 0.0325312299465241
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0328829189189189 0.0332422950819672 0.0334249450549451
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.033442445026178 0.0359767419354839 0.0401099340659341
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 0.0460360864864865 0.0479393641304348 0.0484661703296703
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0509685243243243 0.0518086648351648 0.0534799120879121
##       Q1                  1                  1                  3
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0542568162162162 0.0572357258064516 0.0575451081081081
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0588710322580645 0.0605063387096774 0.0637769516129032
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0699421443850267 0.0704567627118644 0.0798650782122905
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0834006290322581 0.0871397351351351 0.0883613631284916
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0909194836956522 0.092072172972973 0.0935898461538462
##       Q1                  2                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 0.095456664893617 0.105421517045455 0.110302318681319
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.11283614516129 0.114062625 0.114471451612903 0.117368788043478
##       Q1                1           1                 1                 1
##       Q2                0           0                 0                 0
##       Q3                0           0                 0                 0
##       Q4                0           0                 0                 0
##         y_rate_haz
## perdiar6 0.118378508108108 0.123672296703297 0.125918596774194
##       Q1                 1                 2                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.12771653038674 0.131307065573771 0.133378042780749
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.13369978021978 0.150430418478261 0.156193864864865
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.157900901639344 0.160260032258065 0.164549360655738
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.164687104972376 0.165308152173913 0.165602033333333
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.168614315217391 0.176879722826087 0.185508445054945
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.207234659340659 0.215860451612903 0.219131064516129
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.244002098901099 0.244330868852459 0.246067685393258
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.249615309782609 0.249910183783784 0.267995789189189
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.268482603351955 0.270370666666667 0.299234562162162
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.305875803370787 0.310743583783784 0.32411237704918
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 0.371386226519337 0.466937448648649
##       Q1                 1                 1
##       Q2                 0                 0
##       Q3                 0                 0
##       Q4                 0                 0
##         y_rate_haz
## perdiar6 -0.625046472527473 -0.398907540983607 -0.3954171
##       Q1                  1                  1          1
##       Q2                  0                  0          0
##       Q3                  0                  0          0
##       Q4                  0                  0          0
##         y_rate_haz
## perdiar6 -0.373449483333333 -0.372313704918033 -0.339263192307692
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.307473163043478 -0.299180655737705 -0.290870081967213
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.274888893048128 -0.273426718085106 -0.266991033333333
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.255107806451613 -0.245295967741935 -0.244656065217391
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.23731710989011 -0.230180432432432 -0.224819086956522
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.223503928176796 -0.217262142857143 -0.209537266666667
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.207764344262295 -0.207234659340659 -0.196129540983607
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.194467426229508 -0.19280531147541 -0.190522186813187
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.189481081967213 -0.185508445054945 -0.181170508196721
##       Q1                  1                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.180185885869565 -0.178532804347826 -0.178248403225806
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.177152208791209 -0.176879722826087 -0.176613096774194
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.175923616216216 -0.174977790322581 -0.171624955307263
##       Q1                  2                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.168048066298343 -0.167873590163934 -0.166961233695652
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.164549360655738 -0.163782230769231 -0.155425994505494
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.150412252747253 -0.149562779005525 -0.144603983606557
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.143818092391304 -0.143040697297297 -0.142478226315789
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.138858847826087 -0.138108259459459 -0.13369978021978
##       Q1                  1                  1                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.13224652173913 -0.132028532967033 -0.12988752972973
##       Q1                 1                  1                 1
##       Q2                 0                  0                 0
##       Q3                 0                  0                 0
##       Q4                 0                  0                 0
##         y_rate_haz
## perdiar6 -0.129644950819672 -0.128805413265306 -0.126320721311475
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.125634195652174 -0.124658606557377 -0.122996491803279
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.12133437704918 -0.120022654054054 -0.118658554945055
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.116987307692308 -0.115790846590909 -0.111973565934066
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.111801924324324 -0.111072219101124 -0.110756461956522
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.110302318681319 -0.109699573770492 -0.107353058823529
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.105945808988764 -0.100310393617021 -0.0981183870967742
##       Q1                  1                  1                   1
##       Q2                  0                  0                   0
##       Q3                  0                  0                   0
##       Q4                  0                  0                   0
##         y_rate_haz
## perdiar6 -0.0980093666666667 -0.0969323406593407 -0.0964830806451613
##       Q1                   2                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0935898461538462 -0.0925725652173913 -0.0919185989010989
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0880920819672131 -0.0869048571428571 -0.0852336098901099
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0846828579545455 -0.0822072972972973 -0.0818911153846153
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0817653225806452 -0.0806630718232044 -0.0802198681318681
##       Q1                   1                   1                   2
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0797815081967213 -0.0785486208791209 -0.0780749518716577
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0772748594594595 -0.0768773736263736 -0.0756307135135135
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0752061263736264 -0.0735348791208791 -0.0727355869565217
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0718636318681319 -0.0714709344262295 -0.0705801878453039
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0698088196721312 -0.0688997071823204 -0.0668498901098901
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0664845901639344 -0.0644701793478261 -0.064470179347826
##       Q1                   1                   2                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0601649010989011 -0.059836131147541 -0.0556191085714285
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0548497868852459 -0.0539651129032258 -0.0495924456521739
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0484661703296703 -0.0482013278688525 -0.0476802324324324
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0465392131147541 -0.0448770983606557 -0.0427477945945946
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0410112808988764 -0.0369705745856354 -0.0355750877192982
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0349044098360656 -0.0334249450549451 -0.0330238457142857
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0302486519337017 -0.0300824505494505 -0.0285681712707182
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.026739956043956 -0.0252072099447514 -0.0245295967741935
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.023269606557377 -0.0219676166666667 -0.0217262142857143
##       Q1                  1                   1                   1
##       Q2                  0                   0                   0
##       Q3                  0                   0                   0
##       Q4                  0                   0                   0
##         y_rate_haz
## perdiar6 -0.0216159289340101 -0.016353064516129 -0.0132969180327869
##       Q1                   1                  1                   1
##       Q2                   0                  0                   0
##       Q3                   0                  0                   0
##       Q4                   0                  0                   0
##         y_rate_haz
## perdiar6 -0.0131531675675676 -0.0116987307692308 -0.0100274835164835
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.00991848913043479 -0.00975936898395723 -0.00835623626373627
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.00822072972972974 -0.00668498901098901 -0.00487968449197861
##       Q1                    1                    1                    1
##       Q2                    0                    0                    0
##       Q3                    0                    0                    0
##       Q4                    0                    0                    0
##         y_rate_haz
## perdiar6 -0.00332422950819672 -0.00167124725274725 -0.0016621147540984 0
##       Q1                    1                    1                   1 2
##       Q2                    0                    0                   0 0
##       Q3                    0                    0                   0 0
##       Q4                    0                    0                   0 0
##         y_rate_haz
## perdiar6 0.00166211475409836 0.00336096132596685 0.00657658378378377
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.00668498901098902 0.00675926666666667 0.00975936898395723
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 0.00991848913043478 0.0101955418994413 0.0147973135135136
##       Q1                   1                  1                  1
##       Q2                   0                  0                  0
##       Q3                   0                  0                  0
##       Q4                   0                  0                  0
##         y_rate_haz
## perdiar6 0.0183837197802198 0.0197297513513514 0.0201657679558011
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0271881117318436 0.0282559508196721 0.0287268833333333
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0315801803278688 0.0336096132596685 0.0367674395604396
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0398907540983607 0.0401099340659341 0.0410112808988764
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0434524285714286 0.0453729779005525 0.0509685243243243
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0518086648351648 0.0551511593406593 0.0578578532608696
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0584936538461539 0.0614982459016393 0.0641216918918919
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0644701793478261 0.0675926666666666 0.0714709344262295
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0743886684782608 0.0768594032258064 0.0768773736263736
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0810009945652174 0.0852336098901099 0.0902473516483517
##       Q1                  1                  1                  2
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.090428027027027 0.0942256467391304 0.100095772959184
##       Q1                 1                  1                 1
##       Q2                 0                  0                 0
##       Q3                 0                  0                 0
##       Q4                 0                  0                 0
##         y_rate_haz
## perdiar6 0.10361732967033 0.106959824175824 0.108631071428571
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.108752446927374 0.11344607027027 0.115715706521739
##       Q1                 1                1                 1
##       Q2                 0                0                 0
##       Q3                 0                0                 0
##       Q4                 0                0                 0
##         y_rate_haz
## perdiar6 0.116348032786885 0.116987307692308 0.124355569060773
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.124955091891892 0.125343543956044 0.133495516666667
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.136464113513514 0.137522313829787 0.139479895027624
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.150412252747253 0.166211475409836 0.1723613 0.176613096774194
##       Q1                 1                 1         1                 1
##       Q2                 0                 0         0                 0
##       Q3                 0                 0         0                 0
##       Q4                 0                 0         0                 0
##         y_rate_haz
## perdiar6 0.178823456043956 0.180856054054054 0.183172392265193
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
##         y_rate_haz
## perdiar6 0.189076783783784 0.193255276243094 0.22272337704918
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 0.240390048387097 0.350961923076923 0.53105914054054
##       Q1                 1                 1                1
##       Q2                 0                 0                0
##       Q3                 0                 0                0
##       Q4                 0                 0                0
##         y_rate_haz
## perdiar6 -0.440285933701657 -0.431305587301587 -0.391306735135135
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.366644545945946 -0.360067962162162 -0.356551316666667
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.353759445652174 -0.346684967741935 -0.342395639344262
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.339263192307692 -0.328696596774193 -0.319126032786885
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.313978838709677 -0.310851989010989 -0.302504885245902
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.300824505494505 -0.297590416216216 -0.290797021978022
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.287545852459016 -0.280897393442623 -0.271105369565217
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.270742054945055 -0.269639935135135 -0.269262590163934
##       Q1                  3                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.269070807692308 -0.265938360655738 -0.262614131147541
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.259043324175824 -0.257113541436464 -0.256486767567568
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.253198475675676 -0.238988357142857 -0.238754741935484
##       Q1                  1                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.237119435483871 -0.234224855614973 -0.231033950819672
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.22812525 -0.227709721311475 -0.224385491803279
##       Q1           1                  1                  1
##       Q2           0                  0                  0
##       Q3           0                  0                  0
##       Q4           0                  0                  0
##         y_rate_haz
## perdiar6 -0.22283892513369 -0.22272337704918 -0.222275884615385
##       Q1                 1                 1                  1
##       Q2                 0                 0                  0
##       Q3                 0                 0                  0
##       Q4                 0                 0                  0
##         y_rate_haz
## perdiar6 -0.217262142857143 -0.215860451612903 -0.215383118918919
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.214106379888268 -0.213421044198895 -0.211740563535912
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.211088573770492 -0.210450681081081 -0.202778
##       Q1                  1                  1         1
##       Q2                  0                  0         0
##       Q3                  0                  0         0
##       Q4                  0                  0         0
##         y_rate_haz
## perdiar6 -0.201115885245902 -0.20054967032967 -0.199453770491803
##       Q1                  1                 1                  2
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.198941659459459 -0.198878423076923 -0.198369782608696
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.197872080645161 -0.196129540983607 -0.194601467741935
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.194009221621622 -0.191143196721311 -0.190522186813187
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.190104375 -0.189481081967213 -0.188617525139665
##       Q1            1                  1                  1
##       Q2            0                  0                  0
##       Q3            0                  0                  0
##       Q4            0                  0                  0
##         y_rate_haz
## perdiar6 -0.183801449197861 -0.179883709677419 -0.178823456043956
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.177152208791209 -0.17645046961326 -0.169535704918033
##       Q1                  2                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.163655070652174 -0.163128670391061 -0.160439736263736
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.160348907608696 -0.159645662983425 -0.159563016393443
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.157900901639344 -0.157097241758242 -0.156238786885246
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.155425994505494 -0.154604220994475 -0.152905572972973
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.1520835 -0.151252442622951 -0.147928213114754
##       Q1          1                  1                  1
##       Q2          0                  0                  0
##       Q3          0                  0                  0
##       Q4          0                  0                  0
##         y_rate_haz
## perdiar6 -0.147177580645161 -0.146266098360656 -0.145471173913043
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.145398510989011 -0.139001048387097 -0.138108259459459
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.137365741935484 -0.137042274725275 -0.135371027472527
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.133175821621622 -0.12988752972973 -0.129644950819672
##       Q1                  1                 2                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 -0.128243383783784 -0.126320721311475 -0.125343543956044
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.123672296703297 -0.123310945945946 -0.122346502793296
##       Q1                  2                  2                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.122001049450549 -0.1216668 -0.12133437704918
##       Q1                  1          1                 1
##       Q2                  0          0                 0
##       Q3                  0          0                 0
##       Q4                  0          0                 0
##         y_rate_haz
## perdiar6 -0.120674951086956 -0.120329802197802 -0.119314127071823
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.119021869565217 -0.118010147540984 -0.11763364640884
##       Q1                  1                  2                 1
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.11531606043956 -0.113217716666667 -0.110756461956522
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 -0.109231243093923 -0.106959824175824 -0.106869486486487
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 -0.106869486486486 -0.105288576923077 -0.10361732967033
##       Q1                  1                  1                 2
##       Q2                  0                  0                 0
##       Q3                  0                  0                 0
##       Q4                  0                  0                 0
##         y_rate_haz
## perdiar6 -0.0991483591160221 -0.0975318097826087 -0.0946297333333334
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0876133206521739 -0.0871397351351351 -0.0854955891891892
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0843071576086957 -0.0781193934426229 -0.0772748594594594
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0722606685082873 -0.0686828709677419 -0.0668498901098901
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0661232608695652 -0.0621416451612903 -0.0614982459016394
##       Q1                   3                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0595109347826087 -0.0591435833333333 -0.0584936538461539
##       Q1                   1                   1                   2
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0578578532608695 -0.0575451081081081 -0.0562047717391305
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0540741333333333 -0.0539651129032258 -0.0534799120879121
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0531876721311475 -0.0526126702702703 -0.051245527173913
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0501374175824176 -0.0498634426229508 -0.0490046833333333
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0482013278688525 -0.0476802324324324 -0.0465392131147541
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0427477945945946 -0.0417811813186813 -0.0411036486486486
##       Q1                   1                   2                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0382286393442623 -0.038020875 -0.0367674395604396
##       Q1                   1            1                   1
##       Q2                   0            0                   0
##       Q3                   0            0                   0
##       Q4                   0            0                   0
##         y_rate_haz
## perdiar6 -0.0357843529411765 -0.034341435483871 -0.033424945054945
##       Q1                   1                  2                  1
##       Q2                   0                  0                  0
##       Q3                   0                  0                  0
##       Q4                   0                  0                  0
##         y_rate_haz
## perdiar6 -0.0317536978021978 -0.0300824505494505 -0.0284112032967033
##       Q1                   1                   1                   1
##       Q2                   0                   0                   0
##       Q3                   0                   0                   0
##       Q4                   0                   0                   0
##         y_rate_haz
## perdiar6 -0.0268876906077348 -0.0247962228260869 -0.02433336
##       Q1                   1                   1           1
##       Q2                   0                   0           0
##       Q3                   0                   0           0
##       Q4                   0                   0           0
##         y_rate_haz
## perdiar6 -0.0228942903225806 -0.0198369782608696 -0.016353064516129
##       Q1                   1                   1                  1
##       Q2                   0                   0                  0
##       Q3                   0                   0                  0
##       Q4                   0                   0                  0
##         y_rate_haz
## perdiar6 -0.0100828839779006 -0.0100274835164835 -0.00981183870967743
##       Q1                   1                   1                    1
##       Q2                   0                   0                    0
##       Q3                   0                   0                    0
##       Q4                   0                   0                    0
##         y_rate_haz
## perdiar6 -0.00167124725274725 0.00332422950819672 0.00668498901098902
##       Q1                    1                   1                   1
##       Q2                    0                   0                   0
##       Q3                    0                   0                   0
##       Q4                    0                   0                   0
##         y_rate_haz
## perdiar6 0.00981183870967739 0.0116348032786885 0.0132969180327869
##       Q1                   1                  1                  1
##       Q2                   0                  0                  0
##       Q3                   0                  0                  0
##       Q4                   0                  0                  0
##         y_rate_haz
## perdiar6 0.0199453770491803 0.020054967032967 0.0202778 0.023269606557377
##       Q1                  1                 1         1                 1
##       Q2                  0                 0         0                 0
##       Q3                  0                 0         0                 0
##       Q4                  0                 0         0                 0
##         y_rate_haz
## perdiar6 0.0242686436170213 0.026739956043956 0.0285681712707182
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 0.034341435483871 0.0396739565217391 0.0434524285714286
##       Q1                 1                  1                  1
##       Q2                 0                  0                  0
##       Q3                 0                  0                  0
##       Q4                 0                  0                  0
##         y_rate_haz
## perdiar6 0.0484661703296703 0.0498634426229508 0.0518086648351648
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.0543762234636871 0.078982591160221 0.0847678524590164
##       Q1                  1                 1                  1
##       Q2                  0                 0                  0
##       Q3                  0                 0                  0
##       Q4                  0                 0                  0
##         y_rate_haz
## perdiar6 0.0857045138121547 0.0899418548387097 0.0942256467391304
##       Q1                  1                  1                  1
##       Q2                  0                  0                  0
##       Q3                  0                  0                  0
##       Q4                  0                  0                  0
##         y_rate_haz
## perdiar6 0.11763364640884 0.128686038461538 0.136464113513514
##       Q1                1                 1                 1
##       Q2                0                 0                 0
##       Q3                0                 0                 0
##       Q4                0                 0                 0
##         y_rate_haz
## perdiar6 0.144603983606557 0.196616237569061 0.350961923076923
##       Q1                 1                 1                 1
##       Q2                 0                 0                 0
##       Q3                 0                 0                 0
##       Q4                 0                 0                 0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```




# Results Detail

## Results Plots
![](/tmp/ad5d885b-1e1e-4c02-95ad-623be2a61085/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ad5d885b-1e1e-4c02-95ad-623be2a61085/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat        studyid               country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months    ki0047075b-MAL-ED     PERU            Q1                   NA                -0.1472664   -0.1823211   -0.1122118
0-3 months    ki0047075b-MAL-ED     PERU            Q2                   NA                 0.7744946    0.7622457    0.7867434
0-3 months    ki1000109-ResPak      PAKISTAN        Q1                   NA                -0.1738483   -0.3236836   -0.0240130
0-3 months    ki1000109-ResPak      PAKISTAN        Q2                   NA                -0.5786002   -0.9012834   -0.2559171
0-3 months    ki1017093-NIH-Birth   BANGLADESH      Q1                   NA                -0.1257948   -0.1528355   -0.0987542
0-3 months    ki1017093-NIH-Birth   BANGLADESH      Q2                   NA                -1.3344426   -1.3608057   -1.3080796
0-3 months    ki1017093b-PROVIDE    BANGLADESH      Q1                   NA                -0.0487231   -0.0682867   -0.0291596
0-3 months    ki1017093b-PROVIDE    BANGLADESH      Q2                   NA                -1.1130030   -1.1199652   -1.1060407
0-3 months    ki1114097-CMIN        PERU            Q1                   NA                -0.1059852   -0.1733729   -0.0385974
0-3 months    ki1114097-CMIN        PERU            Q2                   NA                -0.2472662   -0.3325163   -0.1620161
3-6 months    ki1000109-ResPak      PAKISTAN        Q1                   NA                 0.0446875   -0.0256185    0.1149935
3-6 months    ki1000109-ResPak      PAKISTAN        Q2                   NA                -0.0257113   -0.2087702    0.1573476
3-6 months    ki1017093-NIH-Birth   BANGLADESH      Q1                   NA                -0.0423110   -0.0652168   -0.0194052
3-6 months    ki1017093-NIH-Birth   BANGLADESH      Q2                   NA                 1.0533909    1.0405603    1.0662214
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   Q1                   NA                 0.0350009   -0.0135283    0.0835300
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   Q2                   NA                -0.0640917   -0.4883155    0.3601321
6-12 months   ki1000109-ResPak      PAKISTAN        Q1                   NA                -0.0035106   -0.0407866    0.0337653
6-12 months   ki1000109-ResPak      PAKISTAN        Q2                   NA                -0.0561887   -0.2189865    0.1066091
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   Q1                   NA                -0.1264735   -0.1535150   -0.0994320
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   Q2                   NA                -0.1312312   -0.2685025    0.0060401


### Parameter: E(Y)


agecat        studyid               country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months    ki0047075b-MAL-ED     PERU            NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months    ki1000109-ResPak      PAKISTAN        NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months    ki1017093-NIH-Birth   BANGLADESH      NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months    ki1017093b-PROVIDE    BANGLADESH      NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months    ki1114097-CMIN        PERU            NA                   NA                -0.1173363   -0.1825933   -0.0520792
3-6 months    ki1000109-ResPak      PAKISTAN        NA                   NA                 0.0387792   -0.0275800    0.1051384
3-6 months    ki1017093-NIH-Birth   BANGLADESH      NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   NA                   NA                 0.0319654   -0.0174743    0.0814052
6-12 months   ki1000109-ResPak      PAKISTAN        NA                   NA                -0.0070783   -0.0435451    0.0293884
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   NA                   NA                -0.1267385   -0.1535471   -0.0999299


### Parameter: ATE


agecat        studyid               country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months    ki0047075b-MAL-ED     PERU            Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki0047075b-MAL-ED     PERU            Q2                   Q1                 0.9217610    0.8807712    0.9627508
0-3 months    ki1000109-ResPak      PAKISTAN        Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki1000109-ResPak      PAKISTAN        Q2                   Q1                -0.4047520   -0.7614343   -0.0480696
0-3 months    ki1017093-NIH-Birth   BANGLADESH      Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki1017093-NIH-Birth   BANGLADESH      Q2                   Q1                -1.2086478   -1.2468247   -1.1704708
0-3 months    ki1017093b-PROVIDE    BANGLADESH      Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki1017093b-PROVIDE    BANGLADESH      Q2                   Q1                -1.0642799   -1.0872489   -1.0413108
0-3 months    ki1114097-CMIN        PERU            Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months    ki1114097-CMIN        PERU            Q2                   Q1                -0.1412811   -0.2508106   -0.0317515
3-6 months    ki1000109-ResPak      PAKISTAN        Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months    ki1000109-ResPak      PAKISTAN        Q2                   Q1                -0.0703988   -0.2662876    0.1254899
3-6 months    ki1017093-NIH-Birth   BANGLADESH      Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months    ki1017093-NIH-Birth   BANGLADESH      Q2                   Q1                 1.0957019    1.0670316    1.1243722
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months    ki1114097-CMIN        GUINEA-BISSAU   Q2                   Q1                -0.0990926   -0.5261786    0.3279935
6-12 months   ki1000109-ResPak      PAKISTAN        Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months   ki1000109-ResPak      PAKISTAN        Q2                   Q1                -0.0526780   -0.2196372    0.1142811
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months   ki1114097-CMIN        GUINEA-BISSAU   Q2                   Q1                -0.0047577   -0.1442026    0.1346872
