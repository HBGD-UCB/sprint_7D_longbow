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
![](/tmp/6f5cd7a7-9c42-43be-b685-cf9ea37e9bd7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6f5cd7a7-9c42-43be-b685-cf9ea37e9bd7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.0286133   -0.0276924    0.0849190
0-3 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0984787    0.0029186    0.1940389
0-3 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                 0.0798910   -0.0370855    0.1968675
0-3 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.1373144   -0.2136693   -0.0609596
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0818735   -0.1317084   -0.0320386
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.1576073   -0.2195773   -0.0956374
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0985165   -0.1584634   -0.0385697
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.1835233   -0.3341430   -0.0329037
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.1027242   -0.1897782   -0.0156703
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0700711   -0.1394068   -0.0007354
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.1244389   -0.1551462   -0.0937316
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.1628990   -0.2525750   -0.0732231
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.1303234   -0.1532132   -0.1074335
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0914129   -0.1210906   -0.0617352
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0950421   -0.1273980   -0.0626862
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                 0.0785158    0.0712909    0.0857407
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                 0.0697390    0.0610776    0.0784005
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                 0.0571167    0.0437090    0.0705245
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                 0.0765408    0.0553516    0.0977300
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                 0.0451943    0.0214873    0.0689014
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                 0.0651618    0.0207875    0.1095361
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0353930   -0.0682044   -0.0025816
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0041670   -0.0838875    0.0755536
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0306934   -0.1187420    0.0573551
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0197619   -0.0615993    0.0220755
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0761407   -0.1760052    0.0237237
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0475788   -0.1373042    0.0421466
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.0160988   -0.0668723    0.0990698
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.0393604   -0.0581571    0.1368780
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0362160   -0.1031409    0.0307088
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0108096   -0.0404716    0.0620908
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0106017   -0.1018963    0.0806928
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0333353   -0.1060853    0.0394147
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0762101   -0.1230935   -0.0293267
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0472361   -0.0728306   -0.0216415
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0436048   -0.1063468    0.0191371
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0235846    0.0036930    0.0434761
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0166369   -0.0113677    0.0446414
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0097696   -0.0506553    0.0311160
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.1629278   -0.1846543   -0.1412014
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.1951306   -0.2230849   -0.1671763
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.0935379   -0.1228146   -0.0642613
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.0005392   -0.0074845    0.0064061
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.0058906   -0.0131181    0.0013369
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.0034736   -0.0143883    0.0074412
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0073659   -0.0265700    0.0118382
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                 0.0013769   -0.0192500    0.0220037
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0421689   -0.0805191   -0.0038187
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0782084   -0.0917576   -0.0646593
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0620438   -0.0936292   -0.0304584
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.1082583   -0.1545279   -0.0619887
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0625694   -0.0782442   -0.0468946
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0351332   -0.0661351   -0.0041314
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0696755   -0.1114276   -0.0279234
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0033652   -0.0332105    0.0264802
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.0896631   -0.1140892   -0.0652371
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.0232615   -0.0516138    0.0050907
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0422264   -0.0659402   -0.0185125
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0805115   -0.1311111   -0.0299120
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0603591   -0.0916786   -0.0290397
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0174713   -0.0405306    0.0055881
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0573744   -0.0675968   -0.0471521
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0808219   -0.1095286   -0.0521152
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0257590   -0.0348867   -0.0166313
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0329388   -0.0443222   -0.0215554
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0697274   -0.0818331   -0.0576217
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0548786   -0.0639024   -0.0458547
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.1282771   -0.1437182   -0.1128359
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.0918914   -0.1077792   -0.0760036
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.0777349   -0.0818159   -0.0736539
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.0729111   -0.0769010   -0.0689213
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.0748370   -0.0799774   -0.0696967
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0378726   -0.0440737   -0.0316714
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.0367722   -0.0440680   -0.0294763
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0444646   -0.0544429   -0.0344862
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.0086998   -0.0143339   -0.0030657
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0157940   -0.0402724    0.0086843
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.0237611   -0.0425282   -0.0049940
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.0260301   -0.0331765   -0.0188838
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0283694   -0.0469745   -0.0097642
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.0325831   -0.0462002   -0.0189660
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0095554   -0.0246896    0.0055788
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.0158995   -0.0060782    0.0378771
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.0003084   -0.0147728    0.0153896
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0160813   -0.0267212   -0.0054414
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0231926   -0.0471576    0.0007723
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0114097   -0.0235916    0.0007721
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.0353000   -0.0471659   -0.0234340
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.0403677   -0.0456019   -0.0351334
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.0614723   -0.0792219   -0.0437227
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0091077   -0.0138144   -0.0044011
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0088809   -0.0161883   -0.0015734
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0082121   -0.0154599   -0.0009643
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.0160477   -0.0216197   -0.0104757
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.0153243   -0.0218052   -0.0088433
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.0243994   -0.0308490   -0.0179498
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.0180844   -0.0208227   -0.0153462
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.0178495   -0.0206021   -0.0150969
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.0199512   -0.0232645   -0.0166379
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.0146047   -0.0171396   -0.0120697
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.0146319   -0.0177547   -0.0115092
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.0124614   -0.0167428   -0.0081799


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
0-3 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0554409   -0.0317416    0.1426235
0-3 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0202929   -0.1150799    0.0744941
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0850068   -0.2468802    0.0768667
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0042077   -0.1097213    0.1013060
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0543678   -0.1301563    0.0214207
0-3 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0928280   -0.2061908    0.0205348
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0389105    0.0021299    0.0756910
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0352813   -0.0038595    0.0744220
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0087767   -0.0197476    0.0021942
0-3 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0213990   -0.0358013   -0.0069968
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0313465   -0.0638415    0.0011485
0-3 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0113790   -0.0602551    0.0374971
3-6 months     ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0312260   -0.0549827    0.1174348
3-6 months     ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0046996   -0.0892639    0.0986631
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0563788   -0.1642043    0.0514466
3-6 months     ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0278169   -0.1267989    0.0711651
3-6 months     ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0232617   -0.1041256    0.1506489
3-6 months     ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0523148   -0.1586983    0.0540688
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0214113   -0.1260349    0.0832122
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0441449   -0.1332278    0.0449380
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure        0.0289740   -0.0241967    0.0821448
3-6 months     ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure        0.0326052   -0.0451197    0.1103302
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0069477   -0.0410180    0.0271226
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0333542   -0.0785421    0.0118336
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0322028   -0.0673968    0.0029913
3-6 months     ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0693899    0.0330798    0.1057000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0053514   -0.0148988    0.0041961
3-6 months     kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0029344   -0.0160112    0.0101424
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0087428   -0.0188011    0.0362866
3-6 months     kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0348030   -0.0773590    0.0077530
6-12 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0161646   -0.0182042    0.0505335
6-12 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0300498   -0.0782624    0.0181628
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0274362   -0.0072629    0.0621352
6-12 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0071061   -0.0514818    0.0372695
6-12 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0862980   -0.1227560   -0.0498400
6-12 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       -0.0198964   -0.0574238    0.0176311
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0382852   -0.0941726    0.0176023
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0181328   -0.0573694    0.0211039
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0399032   -0.0650373   -0.0147690
6-12 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0633506   -0.1000981   -0.0266032
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0071798   -0.0215743    0.0072147
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0439684   -0.0589352   -0.0290016
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.0733985   -0.0913102   -0.0554868
6-12 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0370128   -0.0552210   -0.0188046
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure        0.0048238   -0.0006735    0.0103210
6-12 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure        0.0028979   -0.0034430    0.0092388
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0011004   -0.0085216    0.0107224
6-12 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0065920   -0.0183732    0.0051893
12-24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0070942   -0.0322126    0.0180241
12-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0150613   -0.0346559    0.0045333
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0023392   -0.0222579    0.0175794
12-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0065530   -0.0219497    0.0088438
12-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0254549   -0.0011414    0.0520512
12-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0098638   -0.0114846    0.0312123
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0071113   -0.0333144    0.0190917
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0046716   -0.0114992    0.0208423
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0050677   -0.0180341    0.0078986
12-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.0261724   -0.0475468   -0.0047979
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0002269   -0.0084758    0.0089295
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0008956   -0.0077531    0.0095443
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0007234   -0.0074157    0.0088625
12-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0083517   -0.0166061   -0.0000973
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure        0.0002350   -0.0035357    0.0040056
12-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0018668   -0.0060868    0.0023533
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0000272   -0.0039831    0.0039286
12-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0021433   -0.0028101    0.0070967
