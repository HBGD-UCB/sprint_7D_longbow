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

**Outcome Variable:** y_rate_haz

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
![](/tmp/321e427a-0095-40d9-8caf-139d0ef20c93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/321e427a-0095-40d9-8caf-139d0ef20c93/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level         baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure       NA                 0.2236962   -0.0045709    0.4519632
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure   NA                 0.2306830    0.1323583    0.3290078
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure     NA                 0.0842344   -0.0096025    0.1780713
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                NA                -0.1469716   -0.2433792   -0.0505641
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                -0.1024394   -0.1777626   -0.0271162
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                -0.1308036   -0.2164039   -0.0452033
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                -0.2035424   -0.3093341   -0.0977507
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                -0.0995140   -0.1595591   -0.0394689
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                -0.1608813   -0.3163791   -0.0053834
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                -0.1138412   -0.2035440   -0.0241384
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                 0.0447888   -0.2969720    0.3865496
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                NA                -0.0685215   -0.1378554    0.0008125
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       NA                -0.1247245   -0.1554607   -0.0939883
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure   NA                -0.1422291   -0.2305339   -0.0539242
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure     NA                -0.3038383   -0.6342527    0.0265762
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                -0.1313107   -0.1553388   -0.1072826
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                -0.0991463   -0.1331707   -0.0651219
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                -0.1312925   -0.1890478   -0.0735372
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                -0.1319179   -0.2078252   -0.0560106
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                 0.0822429    0.0750535    0.0894323
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                 0.0696088    0.0607105    0.0785072
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                 0.0474724    0.0336023    0.0613426
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                 0.0789468    0.0574387    0.1004548
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                 0.0492411    0.0249691    0.0735131
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                 0.0752100    0.0277044    0.1227155
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                NA                 0.0142422   -0.0697243    0.0982087
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                 0.0420814   -0.0571737    0.1413365
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                -0.1006221   -0.1867272   -0.0145169
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                 0.0272784   -0.0693300    0.1238868
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                 0.0152687   -0.0369531    0.0674905
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                -0.0118827   -0.1060176    0.0822522
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                 0.0011528   -0.0684209    0.0707266
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                -0.4406058   -0.7343543   -0.1468573
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                 0.0251177    0.0044266    0.0458087
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                 0.0273062   -0.0043054    0.0589178
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                -0.0123990   -0.0690741    0.0442761
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                 0.1488188    0.0102732    0.2873645
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                -0.1656249   -0.1882041   -0.1430458
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                -0.1788380   -0.2235353   -0.1341407
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                -0.1515747   -0.2003845   -0.1027650
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                -0.1582834   -0.2637277   -0.0528390
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                -0.0007207   -0.0076240    0.0061826
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                -0.0040312   -0.0114152    0.0033527
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                -0.0107890   -0.0225332    0.0009552
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                -0.0071033   -0.0265618    0.0123552
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                 0.0016159   -0.0194677    0.0226996
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                -0.0410133   -0.0803172   -0.0017094
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                NA                -0.0179208   -0.0585914    0.0227498
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                -0.0975081   -0.1307002   -0.0643160
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                -0.0312765   -0.0797221    0.0171691
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                -0.0485944   -0.0891410   -0.0080477
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                -0.0421663   -0.0658876   -0.0184450
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                -0.0815311   -0.1320232   -0.0310391
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                -0.0652505   -0.0983178   -0.0321831
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                 0.0123116   -0.0415505    0.0661738
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                -0.0248442   -0.0345583   -0.0151302
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                -0.0328144   -0.0459382   -0.0196906
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                -0.0654097   -0.0888373   -0.0419821
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                -0.0567797   -0.0853307   -0.0282286
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                -0.0534464   -0.0627338   -0.0441590
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                -0.0826751   -0.1064483   -0.0589020
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                -0.0768723   -0.1027493   -0.0509953
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                -0.0648355   -0.1201188   -0.0095521
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                -0.0748897   -0.0790352   -0.0707442
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                -0.0724209   -0.0765377   -0.0683041
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                -0.0793031   -0.0854126   -0.0731936
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                -0.0379618   -0.0442086   -0.0317149
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                -0.0366207   -0.0439894   -0.0292519
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                -0.0453730   -0.0558649   -0.0348811
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                NA                -0.0111553   -0.0275048    0.0051941
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                 0.0153834   -0.0066688    0.0374357
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                 0.0013610   -0.0171403    0.0198623
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                -0.0014613   -0.0253694    0.0224468
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                -0.0160597   -0.0266970   -0.0054223
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                -0.0234970   -0.0476973    0.0007033
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                -0.0127778   -0.0250646   -0.0004909
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                 0.0094008   -0.0514190    0.0702206
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                -0.0076971   -0.0126137   -0.0027804
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                -0.0043311   -0.0126343    0.0039721
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                -0.0041911   -0.0176624    0.0092802
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                 0.0159248   -0.0056041    0.0374537
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                -0.0154475   -0.0214806   -0.0094143
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                -0.0098877   -0.0221285    0.0023531
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                -0.0159826   -0.0309156   -0.0010496
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                -0.0325620   -0.0634572   -0.0016669
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                -0.0179257   -0.0207696   -0.0150818
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                -0.0185138   -0.0214742   -0.0155534
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                -0.0210783   -0.0248175   -0.0173391
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                -0.0148692   -0.0174070   -0.0123315
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                -0.0145034   -0.0176582   -0.0113486
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                -0.0126621   -0.0172984   -0.0080258


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL         NA                   NA                 0.1741611    0.1064061    0.2419161
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                -0.1456660   -0.1918985   -0.0994335
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.1060062   -0.1537996   -0.0582128
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                 0.0720811    0.0664392    0.0777230
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                 0.0679445    0.0527205    0.0831684
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                -0.0044217   -0.0515604    0.0427170
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0040696   -0.0441194    0.0359801
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.1659597   -0.1846663   -0.1472532
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.0034833   -0.0083476    0.0013811
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0085546   -0.0222850    0.0051757
6-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                -0.0482152   -0.0696362   -0.0267942
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0519712   -0.0699293   -0.0340130
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0598718   -0.0680985   -0.0516452
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.0748352   -0.0776789   -0.0719915
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0384218   -0.0427729   -0.0340708
12-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0010141   -0.0093609    0.0113891
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0149856   -0.0226448   -0.0073265
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0153024   -0.0203628   -0.0102420
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.0187407   -0.0205876   -0.0168938
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0144593   -0.0163257   -0.0125930


### Parameter: ATE


agecat         studyid                 country        intervention_level         baseline_level            estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------------  ---------------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure       Mildly Food Insecure     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure   Mildly Food Insecure     0.0069869   -0.2415561    0.2555298
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure     Mildly Food Insecure    -0.1394617   -0.3862637    0.1073402
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0445323   -0.0778115    0.1668760
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure              0.0161681   -0.1127576    0.1450937
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure             -0.0565707   -0.1997011    0.0865596
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0613673   -0.2280556    0.1053210
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0143272   -0.1222717    0.0936173
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.1443028   -0.2026927    0.4912983
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       Food Secure             -0.0562030   -0.1320444    0.0196383
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure   Food Secure             -0.0737076   -0.1859793    0.0385641
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure     Food Secure             -0.2353168   -0.5729274    0.1022938
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure              0.0321644   -0.0094891    0.0738179
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure              0.0000182   -0.0625360    0.0625724
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure             -0.0006072   -0.0802268    0.0790123
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0126341   -0.0237379   -0.0015302
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0347705   -0.0495465   -0.0199945
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0297057   -0.0629728    0.0035614
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0037368   -0.0556669    0.0481933
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0278392   -0.1021684    0.1578467
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.1148643   -0.2351326    0.0054040
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure              0.0130361   -0.1149621    0.1410344
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0271514   -0.1348013    0.0804984
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0141159   -0.1011079    0.0728762
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure             -0.4558745   -0.7542288   -0.1575202
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure              0.0021885   -0.0355926    0.0399697
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0375167   -0.0978506    0.0228173
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.1237012   -0.0163810    0.2637833
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.0132131   -0.0632897    0.0368635
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure              0.0140502   -0.0397291    0.0678295
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure              0.0073416   -0.1004932    0.1151763
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0033105   -0.0130382    0.0064171
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0100684   -0.0239167    0.0037800
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0087193   -0.0195267    0.0369653
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0339100   -0.0774952    0.0096753
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure             -0.0795873   -0.1320832   -0.0270915
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.0133557   -0.0766098    0.0498983
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure             -0.0306736   -0.0881029    0.0267558
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0393648   -0.0951514    0.0164218
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0230842   -0.0637800    0.0176117
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.0544779   -0.0043764    0.1133323
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0079702   -0.0242980    0.0083576
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0405655   -0.0659271   -0.0152038
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure             -0.0319354   -0.0620938   -0.0017771
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.0292288   -0.0547517   -0.0037058
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure             -0.0234259   -0.0509191    0.0040672
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure             -0.0113891   -0.0674472    0.0446689
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure              0.0024688   -0.0031242    0.0080618
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0044134   -0.0115623    0.0027354
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0013411   -0.0083634    0.0110456
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0074113   -0.0196483    0.0048258
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0265388   -0.0009131    0.0539907
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure              0.0125163   -0.0121738    0.0372065
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure              0.0096940   -0.0192698    0.0386578
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0074373   -0.0338723    0.0189977
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure              0.0032819   -0.0129699    0.0195336
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.0254604   -0.0362826    0.0872035
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure              0.0033660   -0.0062837    0.0130157
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure              0.0035060   -0.0108345    0.0178464
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.0236219    0.0015387    0.0457050
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure              0.0055598   -0.0080870    0.0192066
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure             -0.0005351   -0.0166408    0.0155706
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure             -0.0171146   -0.0485932    0.0143641
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0005881   -0.0046201    0.0034439
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0031526   -0.0078451    0.0015398
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0003658   -0.0036167    0.0043483
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure              0.0022071   -0.0030880    0.0075022
