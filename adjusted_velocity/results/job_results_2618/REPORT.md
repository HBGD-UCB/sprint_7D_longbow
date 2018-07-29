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
![](/tmp/dc96f3f1-b346-4450-a0e5-f5f5cb943e28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dc96f3f1-b346-4450-a0e5-f5f5cb943e28/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level         baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure       NA                -0.2386074   -0.3214115   -0.1558032
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure   NA                 0.2076528    0.1308440    0.2844615
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure     NA                -0.2111783   -0.2910280   -0.1313286
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                NA                -0.1418593   -0.2063175   -0.0774012
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                -0.1213162   -0.1722751   -0.0703572
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                -0.1268193   -0.1912514   -0.0623872
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                -0.1668049   -0.2396734   -0.0939364
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                -0.0860278   -0.1447319   -0.0273237
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                -0.0367476   -0.1592227    0.0857275
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                -0.0826453   -0.1677846    0.0024940
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                 0.4512612    0.2788638    0.6236587
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                NA                -0.0817283   -0.1436026   -0.0198539
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       NA                -0.1236376   -0.1541234   -0.0931518
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure   NA                -0.1390658   -0.2104242   -0.0677075
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure     NA                -0.2562976   -0.4231771   -0.0894181
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                -0.1285735   -0.1514928   -0.1056541
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                -0.0852488   -0.1151328   -0.0553647
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                -0.0656915   -0.1022541   -0.0291290
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                -0.0427395   -0.0707094   -0.0147696
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                 0.0781367    0.0707760    0.0854974
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                 0.0694648    0.0605785    0.0783510
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                 0.0549189    0.0410942    0.0687437
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                 0.0756126    0.0532918    0.0979334
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                 0.0385521    0.0145305    0.0625737
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                 0.0671983    0.0273503    0.1070462
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                NA                 0.0222185   -0.0432332    0.0876702
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                 0.0402170   -0.0369498    0.1173839
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                -0.0954451   -0.1669954   -0.0238949
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                 0.0227061   -0.0573890    0.1028012
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                 0.0146613   -0.0332227    0.0625454
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                 0.0143937   -0.0434974    0.0722848
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                 0.0182862   -0.0408621    0.0774345
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                -0.6283395   -0.7602369   -0.4964421
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                 0.0244264    0.0043379    0.0445149
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                 0.0217211   -0.0067104    0.0501527
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                -0.0504952   -0.0909773   -0.0100130
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                 0.1131074    0.0428968    0.1833179
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                -0.1633021   -0.1850441   -0.1415602
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                -0.2066812   -0.2354103   -0.1779521
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                -0.1228732   -0.1516269   -0.0941195
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                 0.0110431   -0.0267746    0.0488609
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                -0.0004475   -0.0075038    0.0066088
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                -0.0055822   -0.0129362    0.0017719
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                 0.0004463   -0.0109747    0.0118672
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                -0.0077002   -0.0264400    0.0110396
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                 0.0003089   -0.0207867    0.0214045
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                -0.0469622   -0.0775204   -0.0164039
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                NA                 0.0299389   -0.0027099    0.0625876
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                -0.0737926   -0.1021309   -0.0454543
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                 0.0057041   -0.0362246    0.0476328
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                -0.0125649   -0.0462927    0.0211629
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                -0.0384799   -0.0589287   -0.0180311
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                -0.0438163   -0.0707303   -0.0169024
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                -0.0550359   -0.0802365   -0.0298352
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                 0.0723898    0.0476730    0.0971066
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                -0.0249981   -0.0341932   -0.0158029
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                -0.0310380   -0.0425565   -0.0195196
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                -0.0646978   -0.0785070   -0.0508887
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                -0.0396104   -0.0499088   -0.0293119
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                -0.0543991   -0.0634973   -0.0453010
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                -0.1198137   -0.1368670   -0.1027605
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                -0.0972001   -0.1123038   -0.0820964
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                -0.1367600   -0.1688647   -0.1046554
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                -0.0778126   -0.0819659   -0.0736592
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                -0.0731932   -0.0772180   -0.0691684
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                -0.0754716   -0.0806791   -0.0702641
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                -0.0376784   -0.0440827   -0.0312741
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                -0.0358623   -0.0430338   -0.0286908
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                -0.0439681   -0.0535739   -0.0343623
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                NA                -0.0099859   -0.0201108    0.0001389
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure       NA                 0.0198330    0.0067275    0.0329385
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure   NA                 0.0043033   -0.0076668    0.0162733
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure     NA                -0.0012065   -0.0148614    0.0124484
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                NA                -0.0185911   -0.0289577   -0.0082244
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       NA                -0.0533970   -0.0731240   -0.0336701
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   NA                -0.0185814   -0.0301733   -0.0069895
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     NA                -0.0623207   -0.0963662   -0.0282752
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                NA                -0.0092813   -0.0140071   -0.0045556
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       NA                -0.0095719   -0.0169120   -0.0022317
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   NA                -0.0242565   -0.0311049   -0.0174080
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     NA                 0.0011493   -0.0084583    0.0107569
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                NA                -0.0157099   -0.0214830   -0.0099369
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       NA                -0.0120804   -0.0201783   -0.0039825
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   NA                -0.0238260   -0.0310125   -0.0166395
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     NA                -0.0383841   -0.0469070   -0.0298611
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                NA                -0.0178796   -0.0207359   -0.0150233
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       NA                -0.0174530   -0.0202012   -0.0147048
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   NA                -0.0187553   -0.0222410   -0.0152696
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                NA                -0.0148165   -0.0173847   -0.0122484
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       NA                -0.0141713   -0.0172434   -0.0110991
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   NA                -0.0120076   -0.0161814   -0.0078337


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
0-3 months     ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure   Mildly Food Insecure     0.4462602    0.3347437    0.5577767
0-3 months     ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure     Mildly Food Insecure     0.0274291   -0.0879918    0.1428500
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0205432   -0.0495796    0.0906660
0-3 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure              0.0150401   -0.0688590    0.0989392
0-3 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure             -0.0249456   -0.1071968    0.0573057
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure              0.0492802   -0.0864094    0.1849698
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure              0.0033825   -0.0999190    0.1066840
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.5372891    0.3552243    0.7193538
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       Food Secure             -0.0419093   -0.1105991    0.0267806
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure   Food Secure             -0.0573375   -0.1515218    0.0368467
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure     Food Secure             -0.1745693   -0.3521969    0.0030583
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure              0.0433247    0.0061861    0.0804633
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure              0.0628819    0.0201949    0.1055689
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.0858340    0.0501920    0.1214759
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0086719   -0.0199241    0.0025802
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0232178   -0.0380555   -0.0083801
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0370605   -0.0706397   -0.0034813
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0084143   -0.0540483    0.0372196
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0179985   -0.0782617    0.1142588
3-6 months     ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.1176636   -0.2134948   -0.0218324
3-6 months     ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure              0.0004876   -0.1007049    0.1016801
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0002676   -0.0731895    0.0726542
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure              0.0036249   -0.0691471    0.0763968
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure             -0.6430008   -0.7834010   -0.5026006
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0027053   -0.0372302    0.0318196
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0749216   -0.1198477   -0.0299955
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.0886809    0.0158444    0.1615175
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.0433791   -0.0791814   -0.0075767
3-6 months     ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure              0.0404289    0.0045188    0.0763391
3-6 months     ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure              0.1743453    0.1307637    0.2179269
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure             -0.0051347   -0.0148167    0.0045474
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure              0.0008938   -0.0126794    0.0144669
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0080091   -0.0195906    0.0356089
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0392620   -0.0747481   -0.0037758
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure             -0.1037315   -0.1471835   -0.0602795
6-12 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure             -0.0242348   -0.0775087    0.0290391
6-12 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure             -0.0425038   -0.0894118    0.0044043
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0053365   -0.0368978    0.0262248
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure             -0.0165560   -0.0470285    0.0139165
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure              0.1108697    0.0808890    0.1408504
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0060400   -0.0205535    0.0084736
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0396998   -0.0561198   -0.0232797
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure             -0.0146123   -0.0281741   -0.0010505
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure             -0.0654146   -0.0847958   -0.0460334
6-12 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure             -0.0428010   -0.0604404   -0.0251615
6-12 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure             -0.0823609   -0.1157228   -0.0489990
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure              0.0046194   -0.0009901    0.0102288
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure              0.0023410   -0.0041196    0.0088016
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0018161   -0.0078754    0.0115076
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0062897   -0.0177977    0.0052183
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure       Food Secure              0.0298190    0.0147971    0.0448408
12-24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure   Food Secure              0.0142892   -0.0002148    0.0287932
12-24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure     Food Secure              0.0087794   -0.0071769    0.0247358
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure       Food Secure             -0.0348060   -0.0570707   -0.0125413
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure   Food Secure              0.0000097   -0.0155385    0.0155579
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure     Food Secure             -0.0437296   -0.0793187   -0.0081406
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       Food Secure             -0.0002905   -0.0090356    0.0084546
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure   Food Secure             -0.0149751   -0.0233023   -0.0066480
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure     Food Secure              0.0104306   -0.0002847    0.0211459
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       Food Secure              0.0036295   -0.0063008    0.0135598
12-24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure   Food Secure             -0.0081161   -0.0173264    0.0010943
12-24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure     Food Secure             -0.0226741   -0.0329603   -0.0123880
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure       Food Secure              0.0004266   -0.0034342    0.0042875
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure   Food Secure             -0.0008757   -0.0052887    0.0035373
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                Food Secure              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       Food Secure              0.0006453   -0.0032870    0.0045775
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure   Food Secure              0.0028090   -0.0020338    0.0076518
