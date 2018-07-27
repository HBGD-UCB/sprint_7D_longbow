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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country        hfoodsec                    n_cell       n
-------------  ----------------------  -------------  -------------------------  -------  ------
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                    160     192
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure             4     192
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure        22     192
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure           6     192
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                     83     566
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           444     566
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure        34     566
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure           5     566
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    427     720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           207     720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure        62     720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure          24     720
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   6496   13158
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          4424   13158
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure      2238   13158
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    914    1796
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           634    1796
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure       248    1796
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            11     105
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure        54     105
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure          40     105
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure                    157     173
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure             2     173
0-3 months     ki0047075b-MAL-ED       INDIA          Moderately Food Insecure         3     173
0-3 months     ki0047075b-MAL-ED       INDIA          Severely Food Insecure          11     173
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure                     77     100
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure             9     100
0-3 months     ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure        11     100
0-3 months     ki0047075b-MAL-ED       NEPAL          Severely Food Insecure           3     100
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                     27     107
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure            26     107
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure        28     107
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure          26     107
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    106     193
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            17     193
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure        65     193
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure           5     193
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                    156     189
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure             4     189
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure        23     189
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure           6     189
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                     77     523
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           407     523
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure        35     523
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure           4     523
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    413     695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           198     695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure        60     695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure          24     695
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   6326   12579
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          4174   12579
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure      2079   12579
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    937    1826
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           645    1826
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure       244    1826
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                      3     129
3-6 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            11     129
3-6 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure        67     129
3-6 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure          48     129
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure                    185     206
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure             5     206
3-6 months     ki0047075b-MAL-ED       INDIA          Moderately Food Insecure         4     206
3-6 months     ki0047075b-MAL-ED       INDIA          Severely Food Insecure          12     206
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure                     93     127
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            15     127
3-6 months     ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure        16     127
3-6 months     ki0047075b-MAL-ED       NEPAL          Severely Food Insecure           3     127
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                    335     455
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            63     455
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure        39     455
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure          18     455
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                     27     111
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure            28     111
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure        28     111
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure          28     111
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    123     220
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            18     220
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure        73     220
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure           6     220
6-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                    154     186
6-12 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure             4     186
6-12 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure        22     186
6-12 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure           6     186
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                     74     482
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           370     482
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure        35     482
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure           3     482
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    403     676
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           194     676
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure        55     676
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure          24     676
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   4891    9839
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          3251    9839
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure      1697    9839
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1613    3135
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1124    3135
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure       398    3135
6-12 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                      3     129
6-12 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            11     129
6-12 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure        67     129
6-12 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure          48     129
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure                    186     207
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure             5     207
6-12 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure         4     207
6-12 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure          12     207
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure                     94     128
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            15     128
6-12 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure        16     128
6-12 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure           3     128
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    341     459
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            63     459
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure        40     459
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure          15     459
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                     27     109
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure            26     109
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure        28     109
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure          28     109
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    119     214
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            18     214
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure        72     214
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure           5     214
12-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    156     188
12-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure             4     188
12-24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure        22     188
12-24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure           6     188
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     67     421
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           322     421
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure        30     421
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure           2     421
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    316     495
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           123     495
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure        38     495
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure          18     495
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   2181    4643
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1551    4643
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure       911    4643
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1866    3605
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1282    3605
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure       457    3605
12-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                      3     129
12-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            11     129
12-24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure        67     129
12-24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure          48     129
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    188     210
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure             5     210
12-24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure         4     210
12-24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure          13     210
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     94     128
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            15     128
12-24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure        16     128
12-24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure           3     128
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    265     364
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            50     364
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure        37     364
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure          12     364
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     25     103
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            25     103
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure        27     103
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure          26     103
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    123     220
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            18     220
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure        74     220
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure           5     220


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/957b252f-bdb7-4ebc-9912-83f33ba80c00/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/957b252f-bdb7-4ebc-9912-83f33ba80c00/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level         baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  -------------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure       NA                4.1043537   3.7006279   4.5080795
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure   NA                4.1257115   3.9365670   4.3148560
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure     NA                3.8476331   3.6595318   4.0357344
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                NA                3.3863896   3.1984358   3.5743435
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                3.3789941   3.2244810   3.5335072
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                3.3764463   3.1940940   3.5587985
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                3.2741826   3.0760816   3.4722836
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                3.4630577   3.3436425   3.5824729
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                3.3022696   3.0038121   3.6007270
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                3.4092730   3.2239890   3.5945570
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                3.8629673   3.1460696   4.5798650
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                NA                3.4288648   3.2820555   3.5756741
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       NA                3.3014725   3.2395868   3.3633582
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure   NA                3.2499102   3.0665458   3.4332746
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure     NA                2.8338589   2.1993439   3.4683738
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                3.2950371   3.2443838   3.3456904
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                3.3343952   3.2624283   3.4063622
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                3.2732579   3.1560119   3.3905039
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                3.2466911   3.1007429   3.3926394
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                3.7410012   3.7259325   3.7560699
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                3.7082767   3.6895157   3.7270376
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                3.6723346   3.6439165   3.7007528
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                3.6600913   3.6158179   3.7043646
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                3.6019640   3.5519398   3.6519882
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                3.6568637   3.5566386   3.7570887
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                NA                2.0055653   1.8227743   2.1883563
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                2.0435365   1.8294004   2.2576725
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                1.7424879   1.5592672   1.9257086
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                2.0223862   1.8200114   2.2247610
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                2.0181595   1.9079634   2.1283556
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                1.9528741   1.7472014   2.1585469
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                1.9723051   1.8220844   2.1225258
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                1.0668188   0.4917176   1.6419201
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                2.0060989   1.9612038   2.0509939
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                2.0028352   1.9343230   2.0713473
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                1.9156932   1.7923662   2.0390202
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                2.2503050   1.9535764   2.5470336
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                1.7077536   1.6605213   1.7549859
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                1.6816705   1.5867465   1.7765945
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                1.7248316   1.6177259   1.8319372
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                1.7215062   1.4890777   1.9539347
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                1.9307473   1.9159631   1.9455314
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                1.9140207   1.8980118   1.9300296
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                1.8999672   1.8747960   1.9251383
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                1.9026169   1.8603382   1.9448956
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                1.9186943   1.8721940   1.9651945
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                1.8357232   1.7508207   1.9206257
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                NA                1.2572224   1.1592003   1.3552445
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                1.0766013   1.0023278   1.1508748
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                1.2167961   1.1028032   1.3307890
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                1.1744326   1.0771706   1.2716946
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                1.2195677   1.1628892   1.2762463
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                1.1294493   1.0104514   1.2484472
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                1.1595025   1.0809844   1.2380206
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                1.3147832   1.1888726   1.4406939
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                1.2463536   1.2230674   1.2696398
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                1.2233548   1.1923543   1.2543554
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                1.1401703   1.0830274   1.1973132
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                1.1623350   1.0976430   1.2270269
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                1.1893329   1.1668530   1.2118129
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                1.1095774   1.0549610   1.1641938
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                1.1290102   1.0663781   1.1916422
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                1.1721148   1.0513072   1.2929224
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                1.1114123   1.1017781   1.1210466
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                1.1092930   1.0994351   1.1191508
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                1.0898197   1.0752938   1.1043456
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                1.2048453   1.1900519   1.2196386
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                1.2066292   1.1892701   1.2239884
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                1.1850786   1.1601657   1.2099915
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                NA                0.8284806   0.7777248   0.8792363
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                0.9229417   0.8581246   0.9877587
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                0.8747249   0.8241642   0.9252855
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                0.8578084   0.7873455   0.9282712
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                0.8739189   0.8436718   0.9041660
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                0.8533717   0.7752708   0.9314725
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                0.8683428   0.8294436   0.9072421
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                0.9211743   0.7564666   1.0858820
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                0.8734601   0.8589006   0.8880197
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                0.8749148   0.8504539   0.8993757
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                0.8643260   0.8253038   0.9033482
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                0.9409047   0.8774866   1.0043228
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                0.8444079   0.8258631   0.8629527
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                0.8375029   0.8040356   0.8709702
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                0.8123046   0.7664276   0.8581816
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                0.7946946   0.6819833   0.9074058
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                0.8048724   0.7967592   0.8129856
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                0.7948015   0.7863229   0.8032802
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                0.7811192   0.7709080   0.7913305
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                0.8472205   0.8399681   0.8544728
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                0.8506913   0.8415108   0.8598719
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                0.8557718   0.8427007   0.8688429


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL         NA                   NA                4.0175394   3.8869881   4.1480907
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                3.3547253   3.2634611   3.4459896
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                3.4411414   3.3443437   3.5379390
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                3.7183193   3.7063844   3.7302541
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                3.6391263   3.6075490   3.6707036
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                1.9530249   1.8522017   2.0538480
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.9716570   1.8866692   2.0566449
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                1.7061500   1.6667551   1.7455449
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                1.9201098   1.9096479   1.9305717
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.8993572   1.8693950   1.9293194
6-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                1.1824866   1.1320801   1.2328932
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.1940035   1.1512681   1.2367388
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                1.1725665   1.1528638   1.1922692
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                1.1069878   1.1002423   1.1137334
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.2029754   1.1926285   1.2133223
12-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.8709334   0.8403674   0.9014995
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.8714362   0.8487736   0.8940987
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.8385573   0.8230446   0.8540700
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.7968476   0.7915393   0.8021560
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.8495388   0.8441127   0.8549650


### Parameter: ATE


agecat         studyid                 country        intervention_level         baseline_level            estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------------  ---------------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure       Mildly Food Insecure     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure   Mildly Food Insecure     0.0213578   -0.4244786    0.4671943
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure     Mildly Food Insecure    -0.2567206   -0.7021155    0.1886743
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure             -0.0073955   -0.2507080    0.2359169
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.0099434   -0.2718193    0.2519325
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure             -0.1122070   -0.3852833    0.1608693
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.1607882   -0.4822486    0.1606723
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0537847   -0.2742165    0.1666470
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.3999096   -0.3268657    1.1266849
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       Food Secure             -0.1273923   -0.2867122    0.0319276
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure   Food Secure             -0.1789546   -0.4138492    0.0559400
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure     Food Secure             -0.5950059   -1.2462833    0.0562714
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure              0.0393582   -0.0486475    0.1273638
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0217792   -0.1494991    0.1059408
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure             -0.0483459   -0.2028343    0.1061424
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0327246   -0.0559293   -0.0095198
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0686666   -0.0988987   -0.0384344
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0581273   -0.1265327    0.0102780
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0032276   -0.1121533    0.1056981
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0379712   -0.2435724    0.3195148
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.2630773   -0.5218869   -0.0042678
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure              0.0168209   -0.2558842    0.2895261
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0652854   -0.2986188    0.1680479
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0458544   -0.2321591    0.1404503
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure             -0.9513407   -1.5369042   -0.3657772
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0032637   -0.0851751    0.0786478
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0904057   -0.2216501    0.0408388
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.2442061   -0.0558995    0.5443118
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.0260831   -0.1321088    0.0799427
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure              0.0170780   -0.0999798    0.1341357
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure              0.0137526   -0.2234265    0.2509316
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0167266   -0.0376186    0.0041655
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0307801   -0.0605726   -0.0009875
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0160774   -0.0458171    0.0779719
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0668937   -0.1610571    0.0272697
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure             -0.1806211   -0.3036044   -0.0576378
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.0404263   -0.1907683    0.1099157
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure             -0.0827898   -0.2208776    0.0552979
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0901184   -0.2219250    0.0416881
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0600652   -0.1569030    0.0367725
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.0952155   -0.0428640    0.2332950
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0229988   -0.0617710    0.0157734
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.1061833   -0.1678887   -0.0444778
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure             -0.0840186   -0.1527740   -0.0152633
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.0797555   -0.1388173   -0.0206937
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure             -0.0603227   -0.1268668    0.0062214
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure             -0.0172181   -0.1400995    0.1056632
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0021194   -0.0152711    0.0110324
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0215926   -0.0383583   -0.0048269
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0017840   -0.0210265    0.0245944
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0197667   -0.0486982    0.0091648
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0944611    0.0121361    0.1767861
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure              0.0462443   -0.0253973    0.1178860
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure              0.0293278   -0.0575121    0.1161677
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0205472   -0.1043006    0.0632062
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0055760   -0.0548511    0.0436991
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.0472554   -0.1202066    0.2147174
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure              0.0014547   -0.0270114    0.0299207
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0091341   -0.0507840    0.0325157
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.0674445    0.0023766    0.1325125
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.0069050   -0.0451669    0.0313569
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure             -0.0321033   -0.0815867    0.0173801
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure             -0.0497133   -0.1639400    0.0645133
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0100709   -0.0214680    0.0013263
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0237532   -0.0366288   -0.0108775
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0034709   -0.0079559    0.0148977
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure              0.0085514   -0.0062466    0.0233493
