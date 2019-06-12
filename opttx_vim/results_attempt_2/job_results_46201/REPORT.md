---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

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

agecat      studyid                 country        hfoodsec                n_cell       n
----------  ----------------------  -------------  ---------------------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               27     188
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               94     105
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                154     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure               14     170
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 76      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         9      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure               13      98
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 27     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        25     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               55     107
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                107     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               71     195
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                4      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 14      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         9      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                4      27
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               5997   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4335   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2273   12605
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                396     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       309     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              114     819
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                190     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure               56     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       417     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                395     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8415   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5602   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2774   16791
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2442    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1729    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4793
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                161     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure               54     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       328     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                349     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        69     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               70     488
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3875    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2761    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1578    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2399    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1705    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              609    4713


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6ebf731f-8f9d-4df1-b452-43244ef02548/05d2b4b0-e8e3-40b0-9dc2-a1751e7b0516/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.9157444   -1.1781108   -0.6533780
Birth       ki0047075b-MAL-ED       PERU           optimal              observed          -0.9660973   -1.2785955   -0.6535990
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.1290145   -0.6092163    0.3511872
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.4979591   -1.5357199   -1.4601983
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.5143132   -1.6527961   -1.3758303
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.6421668   -0.9401094   -0.3442242
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed          -0.6504001   -0.9897525   -0.3110476
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -1.1957485   -1.5694903   -0.8220068
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.7341990   -1.2600594   -0.2083385
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.1811218   -1.4403873   -0.9218563
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.2670060   -1.3637282   -1.1702838
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.3395255   -1.4492662   -1.2297848
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.2438968   -1.2742440   -1.2135497
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.3070986   -1.3969462   -1.2172511
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -1.2177522   -1.6441090   -0.7913954
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed          -1.4341039   -1.6302197   -1.2379880
24 months   ki0047075b-MAL-ED       PERU           optimal              observed          -1.7791729   -2.1185530   -1.4397927
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -1.6529650   -2.1872147   -1.1187153
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -1.5266834   -1.7987115   -1.2546553
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          -1.4911694   -1.6094094   -1.3729294
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -1.8053625   -1.9044592   -1.7062659
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -1.9383305   -1.9775193   -1.8991416
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -1.7173429   -1.8044630   -1.6302228


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          observed             observed          -0.6804082   -0.8755126   -0.4853037
Birth       ki0047075b-MAL-ED       PERU           observed             observed          -0.9387850   -1.1159974   -0.7615727
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -0.6647692   -0.8062103   -0.5233282
Birth       kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.5280452   -1.5507110   -1.5053794
Birth       kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.5000733   -1.5844715   -1.4156751
6 months    ki0047075b-MAL-ED       INDIA          observed             observed          -1.2107862   -1.3345960   -1.0869764
6 months    ki0047075b-MAL-ED       NEPAL          observed             observed          -0.6253125   -0.7752118   -0.4754132
6 months    ki0047075b-MAL-ED       PERU           observed             observed          -1.3792042   -1.5615886   -1.1968198
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -1.0539803   -1.1904887   -0.9174718
6 months    ki1017093-NIH-Birth     BANGLADESH     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.3236269   -1.4015413   -1.2457125
6 months    kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -1.3131326   -1.3362851   -1.2899801
6 months    kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          observed             observed          -1.8476415   -1.9786652   -1.7166178
24 months   ki0047075b-MAL-ED       NEPAL          observed             observed          -1.3776172   -1.5402475   -1.2149868
24 months   ki0047075b-MAL-ED       PERU           observed             observed          -1.7760748   -1.9504595   -1.6016900
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   observed             observed          -1.6108333   -1.7488019   -1.4728648
24 months   ki1017093-NIH-Birth     BANGLADESH     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093c-NIH-Crypto   BANGLADESH     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal     NEPAL          observed             observed          -1.8659973   -1.9508504   -1.7811442
24 months   kiGH5241-JiVitA-3       BANGLADESH     observed             observed          -2.0089421   -2.0368231   -1.9810610
24 months   kiGH5241-JiVitA-4       BANGLADESH     observed             observed          -1.7576915   -1.7933270   -1.7220560


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          optimal              observed           0.2353363   -0.0248054    0.4954779
Birth       ki0047075b-MAL-ED       PERU           optimal              observed           0.0273122   -0.2364298    0.2910542
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.5357547   -1.0001243   -0.0713851
Birth       kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0300861   -0.0608717    0.0006996
Birth       kiGH5241-JiVitA-4       BANGLADESH     optimal              observed           0.0142399   -0.0844630    0.1129429
6 months    ki0047075b-MAL-ED       INDIA          optimal              observed          -0.5686194   -0.8850900   -0.2521488
6 months    ki0047075b-MAL-ED       NEPAL          optimal              observed           0.0250876   -0.2569059    0.3070810
6 months    ki0047075b-MAL-ED       PERU           optimal              observed          -0.1834557   -0.5061675    0.1392562
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          -0.3197813   -0.8168394    0.1772767
6 months    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.2262603   -0.4631769    0.0106564
6 months    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.0683277   -0.0020405    0.1386959
6 months    ki1113344-GMS-Nepal     NEPAL          optimal              observed           0.0158986   -0.0736621    0.1054593
6 months    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0692358   -0.0881984   -0.0502731
6 months    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0375905   -0.1220835    0.0469025
24 months   ki0047075b-MAL-ED       INDIA          optimal              observed          -0.6298893   -1.0669555   -0.1928231
24 months   ki0047075b-MAL-ED       NEPAL          optimal              observed           0.0564867   -0.1224858    0.2354592
24 months   ki0047075b-MAL-ED       PERU           optimal              observed           0.0030981   -0.3104932    0.3166894
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed           0.0421317   -0.4506734    0.5349368
24 months   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          -0.6541111   -0.9017319   -0.4064903
24 months   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed           0.0616363   -0.0268958    0.1501685
24 months   ki1113344-GMS-Nepal     NEPAL          optimal              observed          -0.0606347   -0.1188957   -0.0023738
24 months   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          -0.0706116   -0.0975880   -0.0436351
24 months   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          -0.0403486   -0.1212698    0.0405726
