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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
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

agecat      studyid                 country                        perdiar6    n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%              79   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%             70   241
Birth       ki0047075b-MAL-ED       BRAZIL                         0%             169   183
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              2   183
Birth       ki0047075b-MAL-ED       INDIA                          0%              46   203
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]       107   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%             50   203
Birth       ki0047075b-MAL-ED       NEPAL                          0%              56   168
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%             55   168
Birth       ki0047075b-MAL-ED       PERU                           0%              82   279
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]        84   279
Birth       ki0047075b-MAL-ED       PERU                           >5%            113   279
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%             192   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        49   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   250
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              59   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        40   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             19   118
Birth       ki1000109-ResPak        PAKISTAN                       0%               0     5
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         2     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%              3     5
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%             19    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               6    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         7    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%             10    23
Birth       ki1114097-CMIN          BANGLADESH                     0%               6     8
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%              2     8
Birth       ki1114097-CMIN          BRAZIL                         0%              36   111
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]        46   111
Birth       ki1114097-CMIN          BRAZIL                         >5%             29   111
Birth       ki1114097-CMIN          PERU                           0%               4    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         5    10
Birth       ki1114097-CMIN          PERU                           >5%              1    10
Birth       ki1114097-CONTENT       PERU                           0%               0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1     2
Birth       ki1114097-CONTENT       PERU                           >5%              1     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%              71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        92   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             78   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%             192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   209
6 months    ki0047075b-MAL-ED       INDIA                          0%              50   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%             59   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%              80   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%             80   236
6 months    ki0047075b-MAL-ED       PERU                           0%              68   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   273
6 months    ki0047075b-MAL-ED       PERU                           >5%            116   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             190   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        55   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             46   247
6 months    ki1000109-ResPak        PAKISTAN                       0%              41   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        64   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%            130   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%             129   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       168   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            239   536
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%             157   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       242   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            183   582
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            207   715
6 months    ki1114097-CMIN          BANGLADESH                     0%              81   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%            104   243
6 months    ki1114097-CMIN          BRAZIL                         0%              38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        41   108
6 months    ki1114097-CMIN          BRAZIL                         >5%             29   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%             212   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       189   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%            271   672
6 months    ki1114097-CMIN          PERU                           0%             184   634
6 months    ki1114097-CMIN          PERU                           (0%, 5%]       184   634
6 months    ki1114097-CMIN          PERU                           >5%            266   634
6 months    ki1114097-CONTENT       PERU                           0%             115   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]        43   215
6 months    ki1114097-CONTENT       PERU                           >5%             57   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%             154   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   169
24 months   ki0047075b-MAL-ED       INDIA                          0%              48   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%              77   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   228
24 months   ki0047075b-MAL-ED       PERU                           0%              53   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
24 months   ki0047075b-MAL-ED       PERU                           >5%             84   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             107   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            194   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             152   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       232   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            194   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             277   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            131   514
24 months   ki1114097-CMIN          BANGLADESH                     0%              85   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        58   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%            100   243
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              99   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        77   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%            103   279
24 months   ki1114097-CMIN          PERU                           0%              97   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   244
24 months   ki1114097-CMIN          PERU                           >5%             68   244
24 months   ki1114097-CONTENT       PERU                           0%              84   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]        36   164
24 months   ki1114097-CONTENT       PERU                           >5%             44   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/434df724-c285-44d0-a9f9-abae7ad9e9ce/9ca16877-8c88-4b2c-aa40-b2a9ff04e4b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.7843109   -1.0324957   -0.5361262
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.5231031   -1.7894538   -1.2567524
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed          -1.0467344   -1.2674860   -0.8259828
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed           0.0149991   -0.2285462    0.2585445
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0501935   -0.2801485    0.3805354
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8856450    0.6032147    1.1680752
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.3567889   -1.0401684    0.3265906
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed           0.1195651   -0.3387120    0.5778421
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1348238   -0.3626360    0.0929885
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -1.0904347   -1.3573057   -0.8235638
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.2581426    0.0271646    0.4891207
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed           1.1294746    0.9101335    1.3488157
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2173056   -0.1241815    0.5587927
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6514870    0.4182594    0.8847146
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0572532   -0.3057278    0.1912214
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.3546452   -0.5238289   -0.1854614
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0763257   -0.2387844    0.0861329
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0793573   -0.0794775    0.2381921
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.6629115   -0.9236827   -0.4021403
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.3358659   -0.0862698    0.7580016
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0882574   -0.2546509    0.0781362
6 months    ki1114097-CMIN          PERU                           optimal              observed           0.9289805    0.7682020    1.0897591
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.9946848    0.7391712    1.2501985
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.8145989   -1.0356026   -0.5935953
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.9086672   -1.0540981   -0.7632363
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.4807587   -0.6758316   -0.2856857
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.2315356    0.0413088    0.4217624
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1414849   -0.0305868    0.3135566
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1891772   -0.1561679    0.5345222
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -1.0826342   -1.2650901   -0.9001783
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.7922684   -0.9451142   -0.6394226
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.5292921   -0.6652999   -0.3932842
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.6971491   -0.9133287   -0.4809695
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.1470217   -0.3834052    0.0893617
24 months   ki1114097-CMIN          PERU                           optimal              observed           0.9283018    0.7500971    1.1065064
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.3849334    0.1282668    0.6416000


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED       INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED       PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0415200   -0.1860797    0.1030397
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1114097-CMIN          BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
6 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED       NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED       PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000109-ResPak        PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN          BRAZIL                         observed             observed           0.5889815    0.3767666    0.8011963
6 months    ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.0832589   -0.1713269    0.0048090
6 months    ki1114097-CMIN          PERU                           observed             observed           0.6708938    0.5815040    0.7602836
6 months    ki1114097-CONTENT       PERU                           observed             observed           1.0684318    0.9515274    1.1853362
24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.2053345   -0.3365972   -0.0740718
24 months   ki1114097-CMIN          PERU                           observed             observed           0.7958060    0.6890764    0.9025356
24 months   ki1114097-CONTENT       PERU                           observed             observed           0.5668293    0.4302437    0.7034148


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.1787596   -0.3736780    0.0161588
Birth       ki0047075b-MAL-ED       INDIA                          optimal              observed           0.4539898    0.2243247    0.6836548
Birth       ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.1422701   -0.0483635    0.3329037
Birth       ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0885834   -0.2883612    0.1111944
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0917135   -0.3893118    0.2058849
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0924246   -0.3304661    0.1456169
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.3940807   -1.0699221    0.2817607
Birth       ki1114097-CMIN          BRAZIL                         optimal              observed          -0.2528083   -0.6283562    0.1227396
6 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0049722   -0.1959418    0.1859973
6 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.3870379    0.1683826    0.6056931
6 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1470974   -0.3327501    0.0385552
6 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0750790   -0.2395089    0.0893509
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.3247679   -0.0280036    0.6775394
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1344357   -0.3585940    0.0897225
6 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.1111085   -0.2785398    0.0563228
6 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0842650   -0.2235350    0.0550050
6 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.1320448   -0.2609004   -0.0031893
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0495951   -0.1815057    0.0823155
6 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0848662   -0.1344158    0.3041483
6 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.2531156   -0.0946838    0.6009150
6 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0049984   -0.1328377    0.1428345
6 months    ki1114097-CMIN          PERU                           optimal              observed          -0.2580868   -0.3955496   -0.1206239
6 months    ki1114097-CONTENT       PERU                           optimal              observed           0.0737469   -0.1541888    0.3016827
24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0062265   -0.1912550    0.1788019
24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0436235   -0.1522706    0.0650236
24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.1043113   -0.0553741    0.2639967
24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1116351   -0.2527919    0.0295217
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.2852168    0.1417936    0.4286400
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1390837   -0.4446256    0.1664582
24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.1710551    0.0232877    0.3188226
24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0956728   -0.2155332    0.0241876
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0810581   -0.1646704    0.0025541
24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1563900   -0.3511395    0.0383596
24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0583128   -0.2432920    0.1266664
24 months   ki1114097-CMIN          PERU                           optimal              observed          -0.1324957   -0.2689701    0.0039786
24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.1818959   -0.0521649    0.4159566
