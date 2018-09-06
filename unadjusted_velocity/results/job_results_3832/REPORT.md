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

agecat         studyid                 country        hfoodsec                n_cell       n
-------------  ----------------------  -------------  ---------------------  -------  ------
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     192
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     192
0-3 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     192
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  0     105
0-3 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     105
0-3 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure               94     105
0-3 months     ki0047075b-MAL-ED       INDIA          Food Secure                157     173
0-3 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2     173
0-3 months     ki0047075b-MAL-ED       INDIA          Food Insecure               14     173
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 77     100
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         9     100
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               14     100
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     107
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     107
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure               54     107
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                106     193
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     193
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               70     193
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 83     566
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       444     566
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     566
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       207     720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               86     720
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure              12992   26316
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      8848   26316
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             4476   26316
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1828    3592
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1268    3592
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              496    3592
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Secure                156     189
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     189
3-6 months     ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     189
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
3-6 months     ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
3-6 months     ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure                185     206
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     206
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure               16     206
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure                 93     127
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     127
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure               19     127
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure                 27     111
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure               56     111
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                123     220
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     220
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               79     220
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure                 77     523
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       407     523
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure               39     523
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                413     695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       198     695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     695
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure                670     910
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       126     910
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure              114     910
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure              12652   25158
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      8348   25158
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             4158   25158
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure               1874    3652
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1290    3652
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              488    3652
6-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                154     186
6-12 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     186
6-12 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     186
6-12 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
6-12 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6-12 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure                186     207
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     207
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure               16     207
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     109
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        26     109
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure               56     109
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                119     214
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     214
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               77     214
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 74     482
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       370     482
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               38     482
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                403     676
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       194     676
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               79     676
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                682     918
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       126     918
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure              110     918
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               9774   19665
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      6498   19665
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             3393   19665
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               3180    6176
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      2208    6176
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              788    6176
12-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                156     188
12-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     188
12-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               28     188
12-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
12-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
12-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                188     210
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     210
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     210
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure                 25     103
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        25     103
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure               53     103
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                123     220
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     220
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               79     220
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 67     421
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       322     421
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               32     421
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                316     495
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       123     495
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     495
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                530     728
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure       100     728
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               98     728
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               4357    9276
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      3099    9276
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1820    9276
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               3657    7066
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      2506    7066
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              903    7066


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
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/95f10779-dbdb-4cab-8bec-1b397086e2c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/95f10779-dbdb-4cab-8bec-1b397086e2c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                3.7191675   3.6014887   3.8368464
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                3.8722349   3.6130036   4.1314662
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                3.7296049   3.4811114   3.9780985
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                3.3863896   3.1984358   3.5743435
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                3.3789941   3.2244810   3.5335072
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                3.3272082   3.1922064   3.4622100
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                3.4630577   3.3436425   3.5824729
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                3.3022696   3.0038121   3.6007270
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                3.4416797   3.2600860   3.6232735
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                3.4288648   3.2820555   3.5756741
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                3.3014725   3.2395868   3.3633582
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                3.1965703   3.0119611   3.3811794
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                3.2950371   3.2443838   3.3456904
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                3.3343952   3.2624283   3.4063622
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                3.2658439   3.1719826   3.3597052
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                3.7410012   3.7259325   3.7560699
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                3.7082767   3.6895157   3.7270376
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                3.6723346   3.6439165   3.7007528
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                3.6600913   3.6158179   3.7043646
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                3.6019640   3.5519398   3.6519882
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                3.6568637   3.5566386   3.7570887
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                1.8945183   1.8241876   1.9648491
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.9760085   1.7694994   2.1825176
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                1.9164151   1.7198889   2.1129413
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.9629021   1.8751370   2.0506671
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.8747213   1.6510811   2.0983615
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.8858286   1.6967477   2.0749095
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                2.0055653   1.8227743   2.1883563
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                2.0435365   1.8294004   2.2576725
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.8824371   1.7410614   2.0238128
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                2.0181595   1.9079634   2.1283556
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.9528741   1.7472014   2.1585469
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.9035340   1.7486557   2.0584122
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.8130024   1.7008079   1.9251970
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.8379595   1.7819340   1.8939850
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.8165886   1.6629200   1.9702572
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                2.0060989   1.9612038   2.0509939
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                2.0028352   1.9343230   2.0713473
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                2.0112966   1.8848291   2.1377641
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.7077536   1.6605213   1.7549859
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                1.6816705   1.5867465   1.7765945
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                1.7237814   1.6200613   1.8275016
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                1.9307473   1.9159631   1.9455314
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                1.9140207   1.8980118   1.9300296
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                1.8999672   1.8747960   1.9251383
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.9026169   1.8603382   1.9448956
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.9186943   1.8721940   1.9651945
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.8357232   1.7508207   1.9206257
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                1.1189211   1.0873375   1.1505048
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.1855201   1.1155033   1.2555370
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                1.0577117   0.9424110   1.1730124
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.1884106   1.1494713   1.2273499
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.2506505   1.1817383   1.3195626
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.1477940   1.0424159   1.2531721
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                1.2572224   1.1592003   1.3552445
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                1.0766013   1.0023278   1.1508748
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.1956143   1.1204836   1.2707451
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                1.2195677   1.1628892   1.2762463
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.1294493   1.0104514   1.2484472
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.1695857   1.0952173   1.2439540
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.2717722   1.2145376   1.3290068
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.1566498   1.1316997   1.1815998
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.0756007   0.9951805   1.1560209
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                1.2463536   1.2230674   1.2696398
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.2233548   1.1923543   1.2543554
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.1469039   1.1024741   1.1913336
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.1893329   1.1668530   1.2118129
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                1.1095774   1.0549610   1.1641938
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                1.1407660   1.0843196   1.1972123
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                1.1113468   1.1017242   1.1209693
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                1.1092166   1.0993232   1.1191101
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                1.0898437   1.0753189   1.1043685
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.2052001   1.1904149   1.2199853
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.2061631   1.1887801   1.2235462
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.1854479   1.1605231   1.2103726
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.8823999   0.8629893   0.9018104
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.9021525   0.8507466   0.9535585
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.8444583   0.7844325   0.9044841
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.8756378   0.8526773   0.8985983
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.8589523   0.8057293   0.9121753
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.8247043   0.7896709   0.8597376
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.8284806   0.7777248   0.8792363
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.9229417   0.8581246   0.9877587
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.8664262   0.8232576   0.9095948
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8739189   0.8436718   0.9041660
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.8533717   0.7752708   0.9314725
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.8716866   0.8336810   0.9096922
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.8059710   0.7675338   0.8444081
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7476553   0.7318753   0.7634354
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.6735239   0.6125580   0.7344897
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.8734601   0.8589006   0.8880197
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.8749148   0.8504539   0.8993757
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.8889406   0.8542333   0.9236479
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.8444079   0.8258631   0.8629527
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8375029   0.8040356   0.8709702
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.8079920   0.7636470   0.8523369
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.8045798   0.7964818   0.8126778
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.7949453   0.7864764   0.8034142
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.7810949   0.7708775   0.7913123
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.8478931   0.8406050   0.8551811
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.8500787   0.8408313   0.8593262
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.8555460   0.8423306   0.8687615


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                3.7344048   3.6342116   3.8345980
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                3.3547253   3.2634611   3.4459896
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                3.4411414   3.3443437   3.5379390
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                3.7183193   3.7063844   3.7302541
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                3.6391263   3.6075490   3.6707036
3-6 months     ki0047075b-MAL-ED       INDIA          NA                   NA                1.8981970   1.8329980   1.9633960
3-6 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                1.9409564   1.8656649   2.0162478
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                1.9530249   1.8522017   2.0538480
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.9716570   1.8866692   2.0566449
3-6 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                1.7061500   1.6667551   1.7455449
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                1.9201098   1.9096479   1.9305717
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.8993572   1.8693950   1.9293194
6-12 months    ki0047075b-MAL-ED       INDIA          NA                   NA                1.1157987   1.0858838   1.1457135
6-12 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                1.1896753   1.1557826   1.2235680
6-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                1.1824866   1.1320801   1.2328932
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                1.1940035   1.1512681   1.2367388
6-12 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                1.1725665   1.1528638   1.1922692
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                1.1069328   1.1001924   1.1136731
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                1.2030242   1.1926820   1.2133664
12-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.8797987   0.8616531   0.8979443
12-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.8661220   0.8471443   0.8850997
12-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.8709334   0.8403674   0.9014995
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.8714362   0.8487736   0.8940987
12-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.8385573   0.8230446   0.8540700
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.7967532   0.7914510   0.8020553
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.8496462   0.8441968   0.8550956


### Parameter: ATE


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.1530674   -0.1316240    0.4377588
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0104374   -0.2645123    0.2853872
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0073955   -0.2507080    0.2359169
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0591814   -0.2905947    0.1722319
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1607882   -0.4822486    0.1606723
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0213780   -0.2387171    0.1959611
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1273923   -0.2867122    0.0319276
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2322945   -0.4681621    0.0035730
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0393582   -0.0486475    0.1273638
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0291932   -0.1358501    0.0774638
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0327246   -0.0559293   -0.0095198
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0686666   -0.0988987   -0.0384344
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0581273   -0.1265327    0.0102780
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0032276   -0.1121533    0.1056981
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0814901   -0.1366667    0.2996470
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0218967   -0.1868351    0.2306286
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0881808   -0.3284257    0.1520642
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0770735   -0.2855304    0.1313834
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0379712   -0.2435724    0.3195148
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.1231282   -0.3542118    0.1079554
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0652854   -0.2986188    0.1680479
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1146255   -0.3047057    0.0754546
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0249570   -0.1004482    0.1503623
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0035861   -0.1866812    0.1938535
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0032637   -0.0851751    0.0786478
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0051977   -0.1290021    0.1393975
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0260831   -0.1321088    0.0799427
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0160278   -0.0979404    0.1299961
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0167266   -0.0376186    0.0041655
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0307801   -0.0605726   -0.0009875
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0160774   -0.0458171    0.0779719
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0668937   -0.1610571    0.0272697
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0665990   -0.0102118    0.1434098
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0612094   -0.1807576    0.0583388
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0622399   -0.0169128    0.1413926
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0406166   -0.1529590    0.0717259
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.1806211   -0.3036044   -0.0576378
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0616081   -0.1851110    0.0618948
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0901184   -0.2219250    0.0416881
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0499821   -0.1434867    0.0435226
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1151225   -0.1775589   -0.0526861
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1961715   -0.2948792   -0.0974638
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0229988   -0.0617710    0.0157734
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0994497   -0.1496119   -0.0492875
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0797555   -0.1388173   -0.0206937
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0485669   -0.1093250    0.0121911
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0021301   -0.0153182    0.0110580
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0215031   -0.0382642   -0.0047419
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0009630   -0.0218659    0.0237920
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0197523   -0.0487113    0.0092068
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0197526   -0.0351959    0.0747012
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0379416   -0.1010277    0.0251446
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0166855   -0.0746499    0.0412789
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0509336   -0.0928205   -0.0090466
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0944611    0.0121361    0.1767861
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0379457   -0.0286853    0.1045766
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0205472   -0.1043006    0.0632062
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0022323   -0.0508050    0.0463405
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0583156   -0.0998659   -0.0167653
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1324471   -0.2045182   -0.0603760
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0014547   -0.0270114    0.0299207
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0154804   -0.0221570    0.0531179
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0069050   -0.0451669    0.0313569
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0364160   -0.0844824    0.0116505
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0096345   -0.0210094    0.0017404
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0234849   -0.0363616   -0.0106082
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0021857   -0.0093306    0.0137020
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0076530   -0.0072967    0.0226026
