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
![](/tmp/6be2a490-ba2d-4be1-a985-e84a04ee0d78/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6be2a490-ba2d-4be1-a985-e84a04ee0d78/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                3.7191675   3.6014887   3.8368464
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                3.8722349   3.6130036   4.1314662
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                3.7296049   3.4811114   3.9780985
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                3.3863785   3.1984270   3.5743299
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                3.3789816   3.2244718   3.5334914
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                3.3272198   3.1922194   3.4622203
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                3.4630577   3.3436425   3.5824729
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                3.3022696   3.0038121   3.6007270
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                3.4416797   3.2600860   3.6232735
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                3.4079095   3.2745576   3.5412615
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                3.3028844   3.2414525   3.3643163
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                3.1983742   3.0464043   3.3503442
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                3.3014411   3.2519395   3.3509426
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                3.3652030   3.2980059   3.4324001
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                3.3702038   3.2935382   3.4468693
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                3.7337188   3.7188179   3.7486196
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                3.7116746   3.6940516   3.7292976
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                3.6841470   3.6568612   3.7114327
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                3.6560160   3.6128578   3.6991742
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                3.5949563   3.5462988   3.6436137
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                3.6336357   3.5396117   3.7276598
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                1.8945183   1.8241876   1.9648491
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.9760085   1.7694994   2.1825176
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                1.9164151   1.7198889   2.1129413
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.9576155   1.8705480   2.0446830
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.8678170   1.6696263   2.0660077
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.8858413   1.7306458   2.0410368
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                2.1562861   1.9933653   2.3192069
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                2.1783390   1.9757273   2.3809507
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.9102061   1.7703647   2.0500475
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                2.0176481   1.9078834   2.1274129
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.9598015   1.7521859   2.1674171
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.9027522   1.7479196   2.0575847
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.7961089   1.6957340   1.8964837
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.8381396   1.7827310   1.8935482
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.8303064   1.6947069   1.9659059
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                1.9979961   1.9548144   2.0411779
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.9659260   1.9058424   2.0260096
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.9068819   1.8182094   1.9955545
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.7146057   1.6691951   1.7600164
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                1.6500367   1.5928215   1.7072519
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                1.8586050   1.7936203   1.9235896
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                1.9294368   1.9145336   1.9443400
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                1.9119301   1.8964236   1.9274367
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                1.9144417   1.8911232   1.9377602
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.9023639   1.8605781   1.9441497
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.9189969   1.8737026   1.9642913
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.8346193   1.7517851   1.9174535
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                1.1189211   1.0873375   1.1505048
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                1.1855201   1.1155033   1.2555370
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                1.0577117   0.9424110   1.1730124
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                1.1884106   1.1494713   1.2273499
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                1.2506505   1.1817383   1.3195626
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                1.1477940   1.0424159   1.2531721
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                1.3082027   1.2332358   1.3831697
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                1.0980470   1.0400629   1.1560311
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                1.2263032   1.1566063   1.2960001
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                1.2178435   1.1628288   1.2728582
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.1305382   1.0377145   1.2233619
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.1544131   1.0873893   1.2214368
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                1.2717735   1.2145451   1.3290019
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                1.1566487   1.1316988   1.1815985
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                1.0756087   0.9951996   1.1560178
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                1.2444837   1.2228003   1.2661671
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.2242161   1.1975785   1.2508537
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                1.1315765   1.1043025   1.1588504
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                1.1883098   1.1664917   1.2101280
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                1.0042107   0.9695681   1.0388534
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                1.1126716   1.0758707   1.1494725
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                1.1033092   1.0938553   1.1127631
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                1.1084254   1.0988496   1.1180011
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                1.0998461   1.0877649   1.1119273
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                1.2050661   1.1903755   1.2197567
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                1.2063672   1.1891793   1.2235550
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                1.1870563   1.1632475   1.2108652
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                0.8823999   0.8629893   0.9018104
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                0.9021525   0.8507466   0.9535585
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                0.8444583   0.7844325   0.9044841
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.8756376   0.8526968   0.8985784
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.8588382   0.8058264   0.9118499
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.8247517   0.7893377   0.8601657
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.8481469   0.8054591   0.8908347
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.9562905   0.9046193   1.0079617
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.8740629   0.8344869   0.9136389
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8738701   0.8436171   0.9041231
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.8540559   0.7763650   0.9317469
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.8716067   0.8336217   0.9095916
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.7988029   0.7623775   0.8352284
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.7475588   0.7318484   0.7632693
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.6528064   0.6071303   0.6984825
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.8712526   0.8574390   0.8850661
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.8673827   0.8464717   0.8882938
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.8565868   0.8377507   0.8754228
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.8431529   0.8255361   0.8607698
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.8246900   0.8035462   0.8458338
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.7901747   0.7655769   0.8147725
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.8028480   0.7949606   0.8107354
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.7967244   0.7888530   0.8045957
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.7842826   0.7749162   0.7936490
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.8480654   0.8408540   0.8552769
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.8501624   0.8411088   0.8592159
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.8563659   0.8437992   0.8689327


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
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0073969   -0.2507041    0.2359103
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0591586   -0.2905678    0.1722505
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1607882   -0.4822486    0.1606723
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0213780   -0.2387171    0.1959611
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1050251   -0.2507837    0.0407334
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.2095353   -0.4102061   -0.0088645
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0637619   -0.0196557    0.1471796
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0687627   -0.0224584    0.1599838
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0220442   -0.0440102   -0.0000782
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0495718   -0.0786340   -0.0205096
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0610597   -0.1271531    0.0050336
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0223803   -0.1249904    0.0802299
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0814901   -0.1366667    0.2996470
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0218967   -0.1868351    0.2306286
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0897985   -0.3042202    0.1246232
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0717742   -0.2491612    0.1056128
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0220529   -0.2345033    0.2786091
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.2460800   -0.4592026   -0.0329574
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0578466   -0.2926082    0.1769149
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1148960   -0.3043398    0.0745479
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0420307   -0.0713375    0.1553990
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0341975   -0.1331497    0.2015448
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0320702   -0.1059399    0.0417995
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0911142   -0.1894761    0.0072476
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0645690   -0.1370580    0.0079199
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.1439993    0.0649968    0.2230017
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0175066   -0.0379520    0.0029388
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0149950   -0.0430675    0.0130775
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0166330   -0.0435556    0.0768216
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0677446   -0.1597171    0.0242279
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0665990   -0.0102118    0.1434098
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0612094   -0.1807576    0.0583388
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0622399   -0.0169128    0.1413926
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0406166   -0.1529590    0.0717259
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.2101557   -0.3030094   -0.1173021
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0818995   -0.1819658    0.0181668
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0873053   -0.1958631    0.0212525
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0634304   -0.1485220    0.0216611
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1151248   -0.1775542   -0.0526954
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1961648   -0.2948584   -0.0974712
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0202675   -0.0540521    0.0135170
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1129072   -0.1473214   -0.0784930
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.1840991   -0.2251795   -0.1430187
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0756382   -0.1184165   -0.0328599
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure        0.0051162   -0.0078335    0.0180659
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0034630   -0.0181782    0.0112521
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0013010   -0.0213112    0.0239132
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0180098   -0.0459641    0.0099446
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0197526   -0.0351959    0.0747012
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0379416   -0.1010277    0.0251446
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0167994   -0.0745174    0.0409186
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0508858   -0.0931156   -0.0086561
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1081436    0.0417485    0.1745387
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0259160   -0.0319808    0.0838128
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0198142   -0.1031566    0.0635282
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0022634   -0.0508189    0.0462921
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0512441   -0.0907835   -0.0117048
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.1459965   -0.2041311   -0.0878620
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0038699   -0.0287147    0.0209750
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0146658   -0.0377638    0.0084321
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0184629   -0.0459041    0.0089782
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0529782   -0.0831513   -0.0228052
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0061237   -0.0168262    0.0045788
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0185654   -0.0305347   -0.0065961
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0020969   -0.0091806    0.0133745
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0083005   -0.0059982    0.0225992
