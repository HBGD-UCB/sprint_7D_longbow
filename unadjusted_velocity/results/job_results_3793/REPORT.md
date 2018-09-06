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
![](/tmp/8e7f3756-fd22-4049-b42c-be76c70c8054/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8e7f3756-fd22-4049-b42c-be76c70c8054/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.0286133   -0.0276924    0.0849190
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0984787    0.0029186    0.1940389
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                 0.0798910   -0.0370855    0.1968675
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.1469716   -0.2433792   -0.0505641
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.1024394   -0.1777626   -0.0271162
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.1658260   -0.2340863   -0.0975657
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0995140   -0.1595591   -0.0394689
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.1608813   -0.3163791   -0.0053834
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.1025105   -0.1898381   -0.0151828
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0685215   -0.1378554    0.0008125
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.1247245   -0.1554607   -0.0939883
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.1629482   -0.2524410   -0.0734553
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.1313107   -0.1553388   -0.1072826
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0991463   -0.1331707   -0.0651219
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1314670   -0.1781835   -0.0847506
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                 0.0822429    0.0750535    0.0894323
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                 0.0696088    0.0607105    0.0785072
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                 0.0474724    0.0336023    0.0613426
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                 0.0789468    0.0574387    0.1004548
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                 0.0492411    0.0249691    0.0735131
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                 0.0752100    0.0277044    0.1227155
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0353930   -0.0682044   -0.0025816
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0041670   -0.0838875    0.0755536
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0306934   -0.1187420    0.0573551
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0206438   -0.0625499    0.0212624
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0648195   -0.1700907    0.0404518
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0465110   -0.1359482    0.0429261
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.0142422   -0.0697243    0.0982087
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.0420814   -0.0571737    0.1413365
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0366719   -0.1035292    0.0301855
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0152687   -0.0369531    0.0674905
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0118827   -0.1060176    0.0822522
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0323985   -0.1051990    0.0404020
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0699602   -0.1211387   -0.0187816
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0473091   -0.0730933   -0.0215248
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0507525   -0.1229011    0.0213962
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0251177    0.0044266    0.0458087
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0273062   -0.0043054    0.0589178
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                 0.0336633   -0.0250621    0.0923886
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.1656249   -0.1882041   -0.1430458
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.1788380   -0.2235353   -0.1341407
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.1536933   -0.2008603   -0.1065262
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.0007207   -0.0076240    0.0061826
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.0040312   -0.0114152    0.0033527
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.0107890   -0.0225332    0.0009552
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0071033   -0.0265618    0.0123552
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                 0.0016159   -0.0194677    0.0226996
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0410133   -0.0803172   -0.0017094
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0782084   -0.0917576   -0.0646593
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0620438   -0.0936292   -0.0304584
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.1082583   -0.1545279   -0.0619887
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0625779   -0.0783520   -0.0468037
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0348977   -0.0651543   -0.0046411
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0698149   -0.1123209   -0.0273089
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0179208   -0.0585914    0.0227498
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0975081   -0.1307002   -0.0643160
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0399354   -0.0716047   -0.0082662
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0421663   -0.0658876   -0.0184450
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0815311   -0.1320232   -0.0310391
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0602140   -0.0916241   -0.0288039
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0157042   -0.0404804    0.0090720
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0571706   -0.0674447   -0.0468965
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0862579   -0.1207828   -0.0517330
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0248442   -0.0345583   -0.0151302
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0328144   -0.0459382   -0.0196906
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0627879   -0.0812819   -0.0442939
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0534464   -0.0627338   -0.0441590
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.0826751   -0.1064483   -0.0589020
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.0735895   -0.0977456   -0.0494335
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.0749060   -0.0790459   -0.0707661
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.0724584   -0.0765888   -0.0683280
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.0792924   -0.0854011   -0.0731838
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0378366   -0.0440784   -0.0315948
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.0368053   -0.0441850   -0.0294255
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0452113   -0.0556998   -0.0347227
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0086998   -0.0143339   -0.0030657
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0157940   -0.0402724    0.0086843
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0237611   -0.0425282   -0.0049940
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0259827   -0.0331420   -0.0188235
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0282419   -0.0469727   -0.0095110
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0324307   -0.0462363   -0.0186251
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0111553   -0.0275048    0.0051941
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.0153834   -0.0066688    0.0374357
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0000236   -0.0150747    0.0150276
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0160597   -0.0266970   -0.0054223
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0234970   -0.0476973    0.0007033
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0113741   -0.0235685    0.0008203
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0332914   -0.0450966   -0.0214861
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0402590   -0.0454931   -0.0350248
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0570691   -0.0752673   -0.0388708
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0076971   -0.0126137   -0.0027804
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0043311   -0.0126343    0.0039721
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                 0.0022747   -0.0094520    0.0140014
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0154475   -0.0214806   -0.0094143
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.0098877   -0.0221285    0.0023531
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.0200429   -0.0337684   -0.0063173
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.0180235   -0.0208595   -0.0151874
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.0184577   -0.0214145   -0.0155009
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.0210913   -0.0248317   -0.0173508
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0146267   -0.0171753   -0.0120781
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.0147666   -0.0179469   -0.0115863
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0128472   -0.0174957   -0.0081988


### Parameter: E(Y)


agecat         studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                 0.0420801   -0.0053135    0.0894736
0-3 months     ki0047075b-MAL-ED       PERU           NA                   NA                -0.1456660   -0.1918985   -0.0994335
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.1060062   -0.1537996   -0.0582128
0-3 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                 0.0720811    0.0664392    0.0777230
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                 0.0679445    0.0527205    0.0831684
3-6 months     ki0047075b-MAL-ED       INDIA          NA                   NA                -0.0342701   -0.0645891   -0.0039511
3-6 months     ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0297313   -0.0655487    0.0060862
3-6 months     ki0047075b-MAL-ED       PERU           NA                   NA                -0.0044217   -0.0515604    0.0427170
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0040696   -0.0441194    0.0359801
3-6 months     ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.1659597   -0.1846663   -0.1472532
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.0034833   -0.0083476    0.0013811
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0085546   -0.0222850    0.0051757
6-12 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -0.0801407   -0.0929056   -0.0673758
6-12 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0604083   -0.0741700   -0.0466467
6-12 months    ki0047075b-MAL-ED       PERU           NA                   NA                -0.0482152   -0.0696362   -0.0267942
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0519712   -0.0699293   -0.0340130
6-12 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0598718   -0.0680985   -0.0516452
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.0748541   -0.0776954   -0.0720127
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0384088   -0.0427598   -0.0340579
12-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -0.0100879   -0.0154183   -0.0047576
12-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.0272046   -0.0332725   -0.0211367
12-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0010141   -0.0093609    0.0113891
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.0149856   -0.0226448   -0.0073265
12-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.0153024   -0.0203628   -0.0102420
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.0187705   -0.0206142   -0.0169267
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.0144489   -0.0163217   -0.0125761


### Parameter: ATE


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0698654   -0.0410493    0.1807802
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure        0.0512777   -0.0785446    0.1811000
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0445323   -0.0778115    0.1668760
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0188543   -0.1369809    0.0992722
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0613673   -0.2280556    0.1053210
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0029965   -0.1089754    0.1029825
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0562030   -0.1320444    0.0196383
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0944267   -0.2076352    0.0187818
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0321644   -0.0094891    0.0738179
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0001563   -0.0526899    0.0523772
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0126341   -0.0237379   -0.0015302
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0347705   -0.0495465   -0.0199945
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0297057   -0.0629728    0.0035614
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0037368   -0.0556669    0.0481933
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0312260   -0.0549827    0.1174348
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0046996   -0.0892639    0.0986631
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0441757   -0.1574813    0.0691299
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0258673   -0.1246353    0.0729008
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0278392   -0.1021684    0.1578467
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0509141   -0.1582467    0.0564185
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0271514   -0.1348013    0.0804984
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0476672   -0.1372608    0.0419265
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0226511   -0.0346558    0.0799580
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0192077   -0.0692495    0.1076649
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0021885   -0.0355926    0.0399697
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0085456   -0.0537182    0.0708094
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0132131   -0.0632897    0.0368635
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0119317   -0.0403612    0.0642246
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0033105   -0.0130382    0.0064171
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0100684   -0.0239167    0.0037800
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0087193   -0.0195267    0.0369653
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0339100   -0.0774952    0.0096753
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0161646   -0.0182042    0.0505335
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0300498   -0.0782624    0.0181628
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0276801   -0.0064415    0.0618017
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0072371   -0.0525756    0.0381015
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0795873   -0.1320832   -0.0270915
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0220147   -0.0735611    0.0295318
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0393648   -0.0951514    0.0164218
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0180477   -0.0574088    0.0213134
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0414665   -0.0682884   -0.0146445
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0705537   -0.1130488   -0.0280587
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0079702   -0.0242980    0.0083576
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0379437   -0.0588336   -0.0170537
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0292288   -0.0547517   -0.0037058
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0201432   -0.0460231    0.0057368
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure        0.0024476   -0.0031577    0.0080529
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0043864   -0.0115315    0.0027586
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0010313   -0.0086748    0.0107374
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0073747   -0.0196156    0.0048662
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0070942   -0.0322126    0.0180241
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0150613   -0.0346559    0.0045333
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0022591   -0.0223116    0.0177933
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0064480   -0.0219995    0.0091035
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0265388   -0.0009131    0.0539907
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0111318   -0.0110908    0.0333543
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0074373   -0.0338723    0.0189977
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0046856   -0.0114964    0.0208676
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0069676   -0.0198812    0.0059459
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0237777   -0.0454696   -0.0020858
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0033660   -0.0062837    0.0130157
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0099718   -0.0027439    0.0226875
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0055598   -0.0080870    0.0192066
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0045954   -0.0195883    0.0103975
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0004343   -0.0044570    0.0035885
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0030678   -0.0077578    0.0016223
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0001399   -0.0041559    0.0038761
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0017795   -0.0035279    0.0070869
