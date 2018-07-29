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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/e7ddfd22-ed25-4ef5-9ed2-599bc494c39a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e7ddfd22-ed25-4ef5-9ed2-599bc494c39a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level         baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  -------------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure       NA                3.0689887   2.9047276   3.2332497
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure   NA                4.0755873   3.9280819   4.2230926
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure     NA                3.2240290   3.0576065   3.3904516
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                NA                3.4559755   3.3092317   3.6027192
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                3.4530664   3.3352113   3.5709216
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                3.4462946   3.2988859   3.5937032
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                3.3533843   3.1901072   3.5166613
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                3.4581198   3.3427256   3.5735140
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                3.3321771   3.0574601   3.6068942
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                3.4072717   3.2313124   3.5832311
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                3.8707918   3.2160322   4.5255514
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                NA                3.4027950   3.2748489   3.5307410
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       NA                3.3033958   3.2420770   3.3647146
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure   NA                3.2450368   3.1025957   3.3874779
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure     NA                2.9880303   2.6571058   3.3189548
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                3.3030395   3.2534967   3.3525823
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                3.3732308   3.3056176   3.4408439
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                3.4550502   3.3705460   3.5395544
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                3.4393925   3.3748282   3.5039569
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                3.7329218   3.7177555   3.7480881
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                3.7118092   3.6937479   3.7298705
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                3.6811024   3.6527839   3.7094210
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                3.6552657   3.6104267   3.7001047
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                3.5817661   3.5320055   3.6315267
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                3.6359574   3.5519672   3.7199477
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                NA                2.0538879   1.9202705   2.1875052
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                2.0748218   1.9217962   2.2278475
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                1.7465120   1.6053805   1.8876435
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                2.0821395   1.9261256   2.2381534
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                2.0352044   1.9298016   2.1406073
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                2.1313803   1.9945336   2.2682269
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                2.0262873   1.8904012   2.1621733
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                0.6897202   0.3865299   0.9929106
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                2.0003748   1.9569256   2.0438241
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                1.9785687   1.9179738   2.0391636
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                1.7986918   1.7136249   1.8837588
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                2.2138011   2.0754782   2.3521241
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                1.7163797   1.6723027   1.7604568
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                1.6082890   1.5562219   1.6603561
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                1.7498307   1.6971788   1.8024826
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                2.0884291   2.0197462   2.1571119
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                1.9298826   1.9147356   1.9450295
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                1.9127099   1.8968633   1.9285565
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                1.9214098   1.8970855   1.9457340
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                1.9018776   1.8612112   1.9425440
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                1.9189267   1.8728828   1.9649706
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                1.8227890   1.7574046   1.8881734
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                NA                1.3636524   1.2873192   1.4399856
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                1.1446449   1.0808706   1.2084193
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                1.2996190   1.2041743   1.3950637
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                1.2627400   1.1837569   1.3417231
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                1.2220452   1.1721549   1.2719354
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                1.1665611   1.0810757   1.2520466
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                1.1764650   1.1132521   1.2396779
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                1.3525167   1.2642085   1.4408248
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                1.2459271   1.2238513   1.2680030
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                1.2283540   1.2011015   1.2556066
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                1.1468494   1.1143547   1.1793442
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                1.2082959   1.1865180   1.2300738
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                1.1872445   1.1653760   1.2091131
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                0.9978856   0.9616627   1.0341085
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                1.0832479   1.0505229   1.1159728
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                1.0304202   0.9663736   1.0944669
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                1.1029125   1.0933134   1.1125115
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                1.1078330   1.0982285   1.1174376
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                1.0964338   1.0841445   1.1087232
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                1.2050025   1.1898398   1.2201652
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                1.2076500   1.1907748   1.2245251
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                1.1863741   1.1632657   1.2094825
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                NA                0.8543280   0.8169321   0.8917239
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                0.9694150   0.9192043   1.0196258
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                0.9005377   0.8601247   0.9409508
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                0.8869563   0.8331490   0.9407635
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                0.8671655   0.8377414   0.8965896
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                0.7645199   0.7015232   0.8275167
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                0.8512254   0.8147205   0.8877302
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                0.7307507   0.6388048   0.8226965
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                0.8711188   0.8569591   0.8852786
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                0.8678749   0.8455943   0.8901556
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                0.8278770   0.8050598   0.8506942
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                0.9239085   0.8932241   0.9545929
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                0.8431752   0.8257229   0.8606274
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                0.8257982   0.8058647   0.8457316
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                0.7722150   0.7535028   0.7909273
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                0.8441860   0.8161010   0.8722710
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                0.8032346   0.7950094   0.8114597
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                0.7977572   0.7897652   0.8057492
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                0.7845695   0.7747186   0.7944204
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                0.8475633   0.8402963   0.8548303
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                0.8510410   0.8422395   0.8598426
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                0.8572689   0.8455759   0.8689620


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
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure   Mildly Food Insecure     1.0065986    0.7916606    1.2215366
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure     Mildly Food Insecure     0.1550404   -0.0795651    0.3896459
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure             -0.0029090   -0.1846356    0.1788175
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.0096809   -0.2139179    0.1945560
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure             -0.1025912   -0.3144889    0.1093065
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.1259427   -0.4205429    0.1686576
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0508481   -0.2560289    0.1543327
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.4126720   -0.2517335    1.0770775
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       Food Secure             -0.0993991   -0.2402151    0.0414168
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure   Food Secure             -0.1577582   -0.3479239    0.0324075
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure     Food Secure             -0.4147646   -0.7683468   -0.0611825
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure              0.0701913   -0.0135858    0.1539683
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure              0.1520107    0.0539806    0.2500409
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.1363531    0.0552066    0.2174995
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0211127   -0.0436474    0.0014221
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0518194   -0.0819597   -0.0216791
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0734996   -0.1417168   -0.0052824
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0193083   -0.1142477    0.0756312
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0209339   -0.1742694    0.2161373
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.3073759   -0.5008249   -0.1139269
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure              0.0282516   -0.1711031    0.2276063
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure              0.0961758   -0.0764633    0.2688150
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0089172   -0.1808761    0.1630418
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure             -1.3454842   -1.6671315   -1.0238369
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0218062   -0.0961813    0.0525690
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.2016830   -0.2968691   -0.1064969
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.2134263    0.0685895    0.3582631
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.1080907   -0.1731580   -0.0430234
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure              0.0334510   -0.0322433    0.0991453
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure              0.3720494    0.2927502    0.4513485
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0171727   -0.0380405    0.0036951
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0084728   -0.0375119    0.0205663
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0170491   -0.0430050    0.0771032
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0790886   -0.1552123   -0.0029649
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure             -0.2190075   -0.3186789   -0.1193360
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.0640334   -0.1853999    0.0573330
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure             -0.1009124   -0.2091790    0.0073542
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0554840   -0.1495483    0.0385802
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0455802   -0.1209079    0.0297475
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.1304715    0.0333439    0.2275991
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0175731   -0.0521372    0.0169910
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0990777   -0.1379803   -0.0601751
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure             -0.0376312   -0.0680124   -0.0072500
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.1893589   -0.2318723   -0.1468455
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure             -0.1039967   -0.1433831   -0.0646102
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure             -0.1568243   -0.2244957   -0.0891529
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure              0.0049206   -0.0082087    0.0180499
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0064786   -0.0215127    0.0085554
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0026475   -0.0201748    0.0254697
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0186284   -0.0460318    0.0087750
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.1150870    0.0525436    0.1776305
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure              0.0462097   -0.0088193    0.1012388
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure              0.0326283   -0.0330097    0.0982663
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.1026455   -0.1721394   -0.0331517
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0159401   -0.0627944    0.0309141
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure             -0.1364148   -0.2329754   -0.0398543
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0032439   -0.0296522    0.0231644
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0432418   -0.0700852   -0.0163984
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.0527897    0.0189849    0.0865945
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.0173770   -0.0437832    0.0090292
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure             -0.0709602   -0.0964948   -0.0454256
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure              0.0010108   -0.0318968    0.0339184
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0054774   -0.0165463    0.0055916
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0186651   -0.0311983   -0.0061319
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0034778   -0.0076169    0.0145725
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure              0.0097057   -0.0037392    0.0231506
